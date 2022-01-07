
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sa_family; } ;
union sctp_addr {TYPE_1__ sa; } ;
struct TYPE_5__ {unsigned long data; int function; } ;
struct sctp_transport {int param_flags; int refcnt; int hb_nonce; TYPE_2__ proto_unreach_timer; TYPE_2__ hb_timer; TYPE_2__ T3_rtx_timer; int transports; int send_ready; int transmitted; int pf_retrans; int pathmaxrxt; void* last_time_ecne_reduced; void* last_time_heard; int rto; scalar_t__ sack_generation; int saddr; int af_specific; union sctp_addr ipaddr; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 int SPP_HB_DISABLE ;
 int SPP_PMTUD_ENABLE ;
 int SPP_SACKDELAY_ENABLE ;
 int atomic_set (int *,int) ;
 int get_random_bytes (int *,int) ;
 int init_timer (TYPE_2__*) ;
 void* jiffies ;
 int memset (int *,int ,int) ;
 int msecs_to_jiffies (int ) ;
 int sctp_generate_heartbeat_event ;
 int sctp_generate_proto_unreach_event ;
 int sctp_generate_t3_rtx_event ;
 int sctp_get_af_specific (int ) ;
 int sctp_max_retrans_path ;
 int sctp_pf_retrans ;
 int sctp_rto_initial ;
 int setup_timer (TYPE_2__*,int ,unsigned long) ;

__attribute__((used)) static struct sctp_transport *sctp_transport_init(struct sctp_transport *peer,
        const union sctp_addr *addr,
        gfp_t gfp)
{

 peer->ipaddr = *addr;
 peer->af_specific = sctp_get_af_specific(addr->sa.sa_family);
 memset(&peer->saddr, 0, sizeof(union sctp_addr));

 peer->sack_generation = 0;







 peer->rto = msecs_to_jiffies(sctp_rto_initial);

 peer->last_time_heard = jiffies;
 peer->last_time_ecne_reduced = jiffies;

 peer->param_flags = SPP_HB_DISABLE |
       SPP_PMTUD_ENABLE |
       SPP_SACKDELAY_ENABLE;


 peer->pathmaxrxt = sctp_max_retrans_path;
 peer->pf_retrans = sctp_pf_retrans;

 INIT_LIST_HEAD(&peer->transmitted);
 INIT_LIST_HEAD(&peer->send_ready);
 INIT_LIST_HEAD(&peer->transports);

 setup_timer(&peer->T3_rtx_timer, sctp_generate_t3_rtx_event,
   (unsigned long)peer);
 setup_timer(&peer->hb_timer, sctp_generate_heartbeat_event,
   (unsigned long)peer);
 setup_timer(&peer->proto_unreach_timer,
      sctp_generate_proto_unreach_event, (unsigned long)peer);

 init_timer(&peer->proto_unreach_timer);
        peer->proto_unreach_timer.function = sctp_generate_proto_unreach_event;
 peer->proto_unreach_timer.data = (unsigned long)peer;


 get_random_bytes(&peer->hb_nonce, sizeof(peer->hb_nonce));

 atomic_set(&peer->refcnt, 1);

 return peer;
}
