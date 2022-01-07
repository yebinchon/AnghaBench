
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct iucv_path {int dummy; } ;
struct iucv_message {int dummy; } ;
struct TYPE_2__ {int (* message_send ) (struct iucv_path*,struct iucv_message*,int ,int ,void*,int) ;} ;


 int IUCV_IPRMDATA ;
 int memcpy (scalar_t__*,void*,scalar_t__) ;
 TYPE_1__* pr_iucv ;
 int stub1 (struct iucv_path*,struct iucv_message*,int ,int ,void*,int) ;

__attribute__((used)) static int iucv_send_iprm(struct iucv_path *path, struct iucv_message *msg,
     struct sk_buff *skb)
{
 u8 prmdata[8];

 memcpy(prmdata, (void *) skb->data, skb->len);
 prmdata[7] = 0xff - (u8) skb->len;
 return pr_iucv->message_send(path, msg, IUCV_IPRMDATA, 0,
     (void *) prmdata, 8);
}
