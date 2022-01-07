
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct audit_watch {TYPE_1__* parent; int wlist; } ;
struct TYPE_2__ {int wdata; } ;


 int audit_put_watch (struct audit_watch*) ;
 int list_del (int *) ;
 int put_inotify_watch (int *) ;

void audit_remove_watch(struct audit_watch *watch)
{
 list_del(&watch->wlist);
 put_inotify_watch(&watch->parent->wdata);
 watch->parent = ((void*)0);
 audit_put_watch(watch);
}
