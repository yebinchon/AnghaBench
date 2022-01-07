
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct per_user_data {int ring_cons_mutex; int bind_mutex; struct per_user_data* name; int * ring; int evtchn_wait; } ;
struct inode {int dummy; } ;
struct file {struct per_user_data* private_data; } ;
typedef int evtchn_port_t ;
struct TYPE_2__ {int comm; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ __get_free_page (int ) ;
 TYPE_1__* current ;
 int init_waitqueue_head (int *) ;
 struct per_user_data* kasprintf (int ,char*,int ) ;
 int kfree (struct per_user_data*) ;
 struct per_user_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int evtchn_open(struct inode *inode, struct file *filp)
{
 struct per_user_data *u;

 u = kzalloc(sizeof(*u), GFP_KERNEL);
 if (u == ((void*)0))
  return -ENOMEM;

 u->name = kasprintf(GFP_KERNEL, "evtchn:%s", current->comm);
 if (u->name == ((void*)0)) {
  kfree(u);
  return -ENOMEM;
 }

 init_waitqueue_head(&u->evtchn_wait);

 u->ring = (evtchn_port_t *)__get_free_page(GFP_KERNEL);
 if (u->ring == ((void*)0)) {
  kfree(u->name);
  kfree(u);
  return -ENOMEM;
 }

 mutex_init(&u->bind_mutex);
 mutex_init(&u->ring_cons_mutex);

 filp->private_data = u;

 return 0;
}
