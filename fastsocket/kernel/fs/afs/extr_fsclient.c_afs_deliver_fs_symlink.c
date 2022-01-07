
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct afs_vnode {int status; } ;
struct afs_call {scalar_t__ reply_size; scalar_t__ reply_max; int * reply3; int reply2; int * buffer; int unmarshall; struct afs_vnode* reply; } ;
typedef int __be32 ;


 int EBADMSG ;
 int _enter (char*,int ,int ,int) ;
 int _leave (char*) ;
 int afs_transfer_reply (struct afs_call*,struct sk_buff*) ;
 int xdr_decode_AFSFetchStatus (int const**,int *,struct afs_vnode*,int *) ;
 int xdr_decode_AFSFid (int const**,int ) ;

__attribute__((used)) static int afs_deliver_fs_symlink(struct afs_call *call,
      struct sk_buff *skb, bool last)
{
 struct afs_vnode *vnode = call->reply;
 const __be32 *bp;

 _enter("{%u},{%u},%d", call->unmarshall, skb->len, last);

 afs_transfer_reply(call, skb);
 if (!last)
  return 0;

 if (call->reply_size != call->reply_max)
  return -EBADMSG;


 bp = call->buffer;
 xdr_decode_AFSFid(&bp, call->reply2);
 xdr_decode_AFSFetchStatus(&bp, call->reply3, ((void*)0), ((void*)0));
 xdr_decode_AFSFetchStatus(&bp, &vnode->status, vnode, ((void*)0));


 _leave(" = 0 [done]");
 return 0;
}
