
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct in_addr {int dummy; } ;
struct afs_server {int dummy; } ;
struct afs_call {int work; struct afs_server* server; int state; } ;
struct TYPE_2__ {int saddr; } ;


 int AFS_CALL_REPLYING ;
 int EBADMSG ;
 int ENOTCONN ;
 int INIT_WORK (int *,int ) ;
 int SRXAFSCB_InitCallBackState ;
 int _enter (char*,scalar_t__,int) ;
 struct afs_server* afs_find_server (struct in_addr*) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int memcpy (struct in_addr*,int *,int) ;
 int schedule_work (int *) ;

__attribute__((used)) static int afs_deliver_cb_init_call_back_state(struct afs_call *call,
            struct sk_buff *skb,
            bool last)
{
 struct afs_server *server;
 struct in_addr addr;

 _enter(",{%u},%d", skb->len, last);

 if (skb->len > 0)
  return -EBADMSG;
 if (!last)
  return 0;


 call->state = AFS_CALL_REPLYING;



 memcpy(&addr, &ip_hdr(skb)->saddr, 4);
 server = afs_find_server(&addr);
 if (!server)
  return -ENOTCONN;
 call->server = server;

 INIT_WORK(&call->work, SRXAFSCB_InitCallBackState);
 schedule_work(&call->work);
 return 0;
}
