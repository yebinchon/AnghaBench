
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct afs_vnode {int status; } ;
struct afs_call {scalar_t__ reply_size; scalar_t__ reply_max; int * buffer; int unmarshall; struct afs_vnode* reply2; struct afs_vnode* reply; } ;
typedef int __be32 ;


 int EBADMSG ;
 int _enter (char*,int ,int ,int) ;
 int _leave (char*) ;
 int afs_transfer_reply (struct afs_call*,struct sk_buff*) ;
 int xdr_decode_AFSFetchStatus (int const**,int *,struct afs_vnode*,int *) ;

__attribute__((used)) static int afs_deliver_fs_rename(struct afs_call *call,
      struct sk_buff *skb, bool last)
{
 struct afs_vnode *orig_dvnode = call->reply, *new_dvnode = call->reply2;
 const __be32 *bp;

 _enter("{%u},{%u},%d", call->unmarshall, skb->len, last);

 afs_transfer_reply(call, skb);
 if (!last)
  return 0;

 if (call->reply_size != call->reply_max)
  return -EBADMSG;


 bp = call->buffer;
 xdr_decode_AFSFetchStatus(&bp, &orig_dvnode->status, orig_dvnode, ((void*)0));
 if (new_dvnode != orig_dvnode)
  xdr_decode_AFSFetchStatus(&bp, &new_dvnode->status, new_dvnode,
       ((void*)0));


 _leave(" = 0 [done]");
 return 0;
}
