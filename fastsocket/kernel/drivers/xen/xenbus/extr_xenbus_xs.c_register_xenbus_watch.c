
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int watch ;
struct xenbus_watch {int list; int node; } ;
struct TYPE_2__ {int watch_mutex; } ;


 int BUG_ON (int ) ;
 int EEXIST ;
 int down_read (int *) ;
 int find_watch (char*) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (char*,char*,long) ;
 int up_read (int *) ;
 int watches ;
 int watches_lock ;
 TYPE_1__ xs_state ;
 int xs_watch (int ,char*) ;

int register_xenbus_watch(struct xenbus_watch *watch)
{

 char token[sizeof(watch) * 2 + 1];
 int err;

 sprintf(token, "%lX", (long)watch);

 down_read(&xs_state.watch_mutex);

 spin_lock(&watches_lock);
 BUG_ON(find_watch(token));
 list_add(&watch->list, &watches);
 spin_unlock(&watches_lock);

 err = xs_watch(watch->node, token);


 if ((err != 0) && (err != -EEXIST)) {
  spin_lock(&watches_lock);
  list_del(&watch->list);
  spin_unlock(&watches_lock);
 }

 up_read(&xs_state.watch_mutex);

 return err;
}
