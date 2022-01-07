
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int (* sk_data_ready ) (struct sock*,int ) ;int sk_receive_queue; int sk_ack_backlog; int sk_state; } ;
struct sk_buff {int* data; int len; struct sock* sk; } ;
struct rose_facilities_struct {int dest_ndigis; int source_ndigis; int * source_digis; int source_call; int source_addr; int * dest_digis; int dest_call; int dest_addr; } ;
struct rose_sock {unsigned int lci; int dest_ndigis; int source_ndigis; int condition; scalar_t__ vl; scalar_t__ vr; scalar_t__ va; scalar_t__ vs; int state; scalar_t__ defer; struct rose_neigh* neighbour; struct rose_facilities_struct facilities; struct net_device* device; int * source_digis; int source_call; int source_addr; int * dest_digis; int dest_call; int dest_addr; } ;
struct rose_neigh {int use; } ;
struct net_device {int dummy; } ;


 int ROSE_CALL_ACCEPTED ;
 int ROSE_INVALID_FACILITY ;
 int ROSE_NETWORK_CONGESTION ;
 int ROSE_STATE_3 ;
 int ROSE_STATE_5 ;
 int SOCK_DEAD ;
 int TCP_ESTABLISHED ;
 int memset (struct rose_facilities_struct*,int,int) ;
 struct sock* rose_find_listener (int *,int *) ;
 int rose_insert_socket (struct sock*) ;
 struct sock* rose_make_new (struct sock*) ;
 int rose_parse_facilities (int*,struct rose_facilities_struct*) ;
 struct rose_sock* rose_sk (struct sock*) ;
 int rose_start_heartbeat (struct sock*) ;
 int rose_start_idletimer (struct sock*) ;
 int rose_transmit_clear_request (struct rose_neigh*,unsigned int,int ,int) ;
 int rose_write_internal (struct sock*,int ) ;
 scalar_t__ sk_acceptq_is_full (struct sock*) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*,int ) ;

int rose_rx_call_request(struct sk_buff *skb, struct net_device *dev, struct rose_neigh *neigh, unsigned int lci)
{
 struct sock *sk;
 struct sock *make;
 struct rose_sock *make_rose;
 struct rose_facilities_struct facilities;
 int n, len;

 skb->sk = ((void*)0);




 memset(&facilities, 0x00, sizeof(struct rose_facilities_struct));

 len = (((skb->data[3] >> 4) & 0x0F) + 1) >> 1;
 len += (((skb->data[3] >> 0) & 0x0F) + 1) >> 1;
 if (!rose_parse_facilities(skb->data + len + 4, &facilities)) {
  rose_transmit_clear_request(neigh, lci, ROSE_INVALID_FACILITY, 76);
  return 0;
 }

 sk = rose_find_listener(&facilities.source_addr, &facilities.source_call);




 if (sk == ((void*)0) || sk_acceptq_is_full(sk) ||
     (make = rose_make_new(sk)) == ((void*)0)) {
  rose_transmit_clear_request(neigh, lci, ROSE_NETWORK_CONGESTION, 120);
  return 0;
 }

 skb->sk = make;
 make->sk_state = TCP_ESTABLISHED;
 make_rose = rose_sk(make);

 make_rose->lci = lci;
 make_rose->dest_addr = facilities.dest_addr;
 make_rose->dest_call = facilities.dest_call;
 make_rose->dest_ndigis = facilities.dest_ndigis;
 for (n = 0 ; n < facilities.dest_ndigis ; n++)
  make_rose->dest_digis[n] = facilities.dest_digis[n];
 make_rose->source_addr = facilities.source_addr;
 make_rose->source_call = facilities.source_call;
 make_rose->source_ndigis = facilities.source_ndigis;
 for (n = 0 ; n < facilities.source_ndigis ; n++)
  make_rose->source_digis[n]= facilities.source_digis[n];
 make_rose->neighbour = neigh;
 make_rose->device = dev;
 make_rose->facilities = facilities;

 make_rose->neighbour->use++;

 if (rose_sk(sk)->defer) {
  make_rose->state = ROSE_STATE_5;
 } else {
  rose_write_internal(make, ROSE_CALL_ACCEPTED);
  make_rose->state = ROSE_STATE_3;
  rose_start_idletimer(make);
 }

 make_rose->condition = 0x00;
 make_rose->vs = 0;
 make_rose->va = 0;
 make_rose->vr = 0;
 make_rose->vl = 0;
 sk->sk_ack_backlog++;

 rose_insert_socket(make);

 skb_queue_head(&sk->sk_receive_queue, skb);

 rose_start_heartbeat(make);

 if (!sock_flag(sk, SOCK_DEAD))
  sk->sk_data_ready(sk, skb->len);

 return 1;
}
