
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refcount; } ;
struct vhost_ubuf_ref {TYPE_1__ kref; int wait; } ;


 int atomic_read (int *) ;
 int kfree (struct vhost_ubuf_ref*) ;
 int kref_put (TYPE_1__*,int ) ;
 int vhost_zerocopy_done_signal ;
 int wait_event (int ,int) ;

void vhost_ubuf_put_and_wait(struct vhost_ubuf_ref *ubufs)
{
 kref_put(&ubufs->kref, vhost_zerocopy_done_signal);
 wait_event(ubufs->wait, !atomic_read(&ubufs->kref.refcount));
 kfree(ubufs);
}
