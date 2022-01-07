
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct iucv_path {int dummy; } ;
struct iucv_message {int dummy; } ;


 int __iucv_message_send (struct iucv_path*,struct iucv_message*,int ,int ,void*,size_t) ;
 int local_bh_disable () ;
 int local_bh_enable () ;

int iucv_message_send(struct iucv_path *path, struct iucv_message *msg,
        u8 flags, u32 srccls, void *buffer, size_t size)
{
 int rc;

 local_bh_disable();
 rc = __iucv_message_send(path, msg, flags, srccls, buffer, size);
 local_bh_enable();
 return rc;
}
