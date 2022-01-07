
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct afs_call {int dummy; } ;


 int EBADMSG ;
 int _enter (char*,scalar_t__,int) ;

__attribute__((used)) static int afs_deliver_fs_give_up_callbacks(struct afs_call *call,
         struct sk_buff *skb, bool last)
{
 _enter(",{%u},%d", skb->len, last);

 if (skb->len > 0)
  return -EBADMSG;
 return 0;
}
