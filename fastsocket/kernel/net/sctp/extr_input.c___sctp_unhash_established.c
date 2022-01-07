
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_hashbucket {int lock; } ;
struct TYPE_3__ {int port; } ;
struct sctp_ep_common {size_t hashent; int node; TYPE_1__ bind_addr; } ;
struct TYPE_4__ {int port; } ;
struct sctp_association {TYPE_2__ peer; struct sctp_ep_common base; } ;


 int hlist_del_init (int *) ;
 size_t sctp_assoc_hashfn (int ,int ) ;
 struct sctp_hashbucket* sctp_assoc_hashtable ;
 int sctp_write_lock (int *) ;
 int sctp_write_unlock (int *) ;

__attribute__((used)) static void __sctp_unhash_established(struct sctp_association *asoc)
{
 struct sctp_hashbucket *head;
 struct sctp_ep_common *epb;

 epb = &asoc->base;

 epb->hashent = sctp_assoc_hashfn(epb->bind_addr.port,
      asoc->peer.port);

 head = &sctp_assoc_hashtable[epb->hashent];

 sctp_write_lock(&head->lock);
 hlist_del_init(&epb->node);
 sctp_write_unlock(&head->lock);
}
