
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reada_control {int refcnt; int elems; int wait; } ;


 scalar_t__ atomic_read (int *) ;
 int kref_put (int *,int ) ;
 int reada_control_release ;
 int wait_event (int ,int) ;

int btrfs_reada_wait(void *handle)
{
 struct reada_control *rc = handle;

 while (atomic_read(&rc->elems)) {
  wait_event(rc->wait, atomic_read(&rc->elems) == 0);
 }

 kref_put(&rc->refcnt, reada_control_release);

 return 0;
}
