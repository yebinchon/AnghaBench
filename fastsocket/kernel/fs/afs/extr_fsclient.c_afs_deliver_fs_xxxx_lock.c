
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct afs_call {scalar_t__ reply_size; scalar_t__ reply_max; int * buffer; int unmarshall; } ;
typedef int __be32 ;


 int EBADMSG ;
 int _enter (char*,int ,int ,int) ;
 int _leave (char*) ;
 int afs_transfer_reply (struct afs_call*,struct sk_buff*) ;

__attribute__((used)) static int afs_deliver_fs_xxxx_lock(struct afs_call *call,
        struct sk_buff *skb, bool last)
{
 const __be32 *bp;

 _enter("{%u},{%u},%d", call->unmarshall, skb->len, last);

 afs_transfer_reply(call, skb);
 if (!last)
  return 0;

 if (call->reply_size != call->reply_max)
  return -EBADMSG;


 bp = call->buffer;


 _leave(" = 0 [done]");
 return 0;
}
