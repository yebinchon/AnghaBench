
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iucv_path {int dummy; } ;
struct iucv_message {int flags; } ;


 int IUCV_IPRMDATA ;
 int __iucv_message_receive (struct iucv_path*,struct iucv_message*,int ,void*,size_t,size_t*) ;
 int iucv_message_receive_iprmdata (struct iucv_path*,struct iucv_message*,int ,void*,size_t,size_t*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;

int iucv_message_receive(struct iucv_path *path, struct iucv_message *msg,
    u8 flags, void *buffer, size_t size, size_t *residual)
{
 int rc;

 if (msg->flags & IUCV_IPRMDATA)
  return iucv_message_receive_iprmdata(path, msg, flags,
           buffer, size, residual);
 local_bh_disable();
 rc = __iucv_message_receive(path, msg, flags, buffer, size, residual);
 local_bh_enable();
 return rc;
}
