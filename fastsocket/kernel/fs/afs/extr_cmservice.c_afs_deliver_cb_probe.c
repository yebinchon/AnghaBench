
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct afs_call {int work; int state; } ;


 int AFS_CALL_REPLYING ;
 int EBADMSG ;
 int INIT_WORK (int *,int ) ;
 int SRXAFSCB_Probe ;
 int _enter (char*,scalar_t__,int) ;
 int schedule_work (int *) ;

__attribute__((used)) static int afs_deliver_cb_probe(struct afs_call *call, struct sk_buff *skb,
    bool last)
{
 _enter(",{%u},%d", skb->len, last);

 if (skb->len > 0)
  return -EBADMSG;
 if (!last)
  return 0;


 call->state = AFS_CALL_REPLYING;

 INIT_WORK(&call->work, SRXAFSCB_Probe);
 schedule_work(&call->work);
 return 0;
}
