
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_ubuf_ref {int kref; } ;


 int kref_put (int *,int ) ;
 int vhost_zerocopy_done_signal ;

void vhost_ubuf_put(struct vhost_ubuf_ref *ubufs)
{
 kref_put(&ubufs->kref, vhost_zerocopy_done_signal);
}
