
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_hashbucket {int lock; int chain; } ;
struct TYPE_2__ {int port; } ;
struct sctp_ep_common {size_t hashent; int node; TYPE_1__ bind_addr; } ;
struct sctp_endpoint {struct sctp_ep_common base; } ;


 int hlist_add_head (int *,int *) ;
 size_t sctp_ep_hashfn (int ) ;
 struct sctp_hashbucket* sctp_ep_hashtable ;
 int sctp_write_lock (int *) ;
 int sctp_write_unlock (int *) ;

__attribute__((used)) static void __sctp_hash_endpoint(struct sctp_endpoint *ep)
{
 struct sctp_ep_common *epb;
 struct sctp_hashbucket *head;

 epb = &ep->base;

 epb->hashent = sctp_ep_hashfn(epb->bind_addr.port);
 head = &sctp_ep_hashtable[epb->hashent];

 sctp_write_lock(&head->lock);
 hlist_add_head(&epb->node, &head->chain);
 sctp_write_unlock(&head->lock);
}
