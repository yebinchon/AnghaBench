
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sctp_chunk {int singleton; int refcnt; int frag_list; int transmitted_list; int * msg; int fast_retransmit; scalar_t__ tsn_gap_acked; scalar_t__ tsn_missing_report; scalar_t__ pdiscard; scalar_t__ ecn_ce_done; scalar_t__ end_of_packet; scalar_t__ sent_at; scalar_t__ rtt_in_progress; scalar_t__ has_ssn; scalar_t__ has_tsn; struct sctp_association* asoc; struct sk_buff* skb; int list; } ;
struct sctp_association {int dummy; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int SCTP_CAN_FRTX ;
 int SCTP_DBG_OBJCNT_INC (int ) ;
 int SCTP_DEBUG_PRINTK (char*,struct sk_buff*) ;
 int atomic_set (int *,int) ;
 int chunk ;
 struct sctp_chunk* kmem_cache_zalloc (int ,int ) ;
 int sctp_chunk_cachep ;

struct sctp_chunk *sctp_chunkify(struct sk_buff *skb,
       const struct sctp_association *asoc,
       struct sock *sk)
{
 struct sctp_chunk *retval;

 retval = kmem_cache_zalloc(sctp_chunk_cachep, GFP_ATOMIC);

 if (!retval)
  goto nodata;

 if (!sk) {
  SCTP_DEBUG_PRINTK("chunkifying skb %p w/o an sk\n", skb);
 }

 INIT_LIST_HEAD(&retval->list);
 retval->skb = skb;
 retval->asoc = (struct sctp_association *)asoc;
 retval->has_tsn = 0;
 retval->has_ssn = 0;
 retval->rtt_in_progress = 0;
 retval->sent_at = 0;
 retval->singleton = 1;
 retval->end_of_packet = 0;
 retval->ecn_ce_done = 0;
 retval->pdiscard = 0;







 retval->tsn_missing_report = 0;
 retval->tsn_gap_acked = 0;
 retval->fast_retransmit = SCTP_CAN_FRTX;




 retval->msg = ((void*)0);


 INIT_LIST_HEAD(&retval->transmitted_list);
 INIT_LIST_HEAD(&retval->frag_list);
 SCTP_DBG_OBJCNT_INC(chunk);
 atomic_set(&retval->refcnt, 1);

nodata:
 return retval;
}
