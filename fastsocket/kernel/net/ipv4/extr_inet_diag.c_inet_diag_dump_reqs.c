
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct sock {scalar_t__ sk_family; int sk_userlocks; } ;
struct sk_buff {int dummy; } ;
struct request_sock {struct request_sock* dl_next; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int* args; TYPE_5__* nlh; int skb; } ;
struct listen_sock {int nr_table_entries; struct request_sock** syn_table; int qlen; } ;
struct inet_sock {int num; } ;
struct inet_request_sock {scalar_t__ rmt_port; int rmt_addr; int loc_addr; } ;
struct TYPE_12__ {scalar_t__ idiag_dport; } ;
struct inet_diag_req {TYPE_1__ id; } ;
struct inet_diag_entry {scalar_t__ family; int dport; int * daddr; int * saddr; int userlocks; int sport; } ;
struct TYPE_15__ {int syn_wait_lock; struct listen_sock* listen_opt; } ;
struct inet_connection_sock {TYPE_4__ icsk_accept_queue; } ;
struct TYPE_14__ {int * s6_addr32; } ;
struct TYPE_13__ {int * s6_addr32; } ;
struct TYPE_17__ {TYPE_3__ rmt_addr; TYPE_2__ loc_addr; } ;
struct TYPE_16__ {int nlmsg_seq; } ;
struct TYPE_11__ {int pid; } ;


 scalar_t__ AF_INET6 ;
 int INET_DIAG_REQ_BYTECODE ;
 TYPE_10__ NETLINK_CB (int ) ;
 struct inet_diag_req* NLMSG_DATA (TYPE_5__*) ;
 TYPE_8__* inet6_rsk (struct request_sock*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_diag_bc_run (int ,int ,struct inet_diag_entry*) ;
 int inet_diag_fill_req (struct sk_buff*,struct sock*,struct request_sock*,int ,int ,TYPE_5__*) ;
 struct inet_request_sock* inet_rsk (struct request_sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int nla_data (struct nlattr const*) ;
 int nla_len (struct nlattr const*) ;
 scalar_t__ nlmsg_attrlen (TYPE_5__*,int) ;
 struct nlattr* nlmsg_find_attr (TYPE_5__*,int,int ) ;
 int ntohs (scalar_t__) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static int inet_diag_dump_reqs(struct sk_buff *skb, struct sock *sk,
          struct netlink_callback *cb)
{
 struct inet_diag_entry entry;
 struct inet_diag_req *r = NLMSG_DATA(cb->nlh);
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct listen_sock *lopt;
 const struct nlattr *bc = ((void*)0);
 struct inet_sock *inet = inet_sk(sk);
 int j, s_j;
 int reqnum, s_reqnum;
 int err = 0;

 s_j = cb->args[3];
 s_reqnum = cb->args[4];

 if (s_j > 0)
  s_j--;

 entry.family = sk->sk_family;

 read_lock_bh(&icsk->icsk_accept_queue.syn_wait_lock);

 lopt = icsk->icsk_accept_queue.listen_opt;
 if (!lopt || !lopt->qlen)
  goto out;

 if (nlmsg_attrlen(cb->nlh, sizeof(*r))) {
  bc = nlmsg_find_attr(cb->nlh, sizeof(*r),
         INET_DIAG_REQ_BYTECODE);
  entry.sport = inet->num;
  entry.userlocks = sk->sk_userlocks;
 }

 for (j = s_j; j < lopt->nr_table_entries; j++) {
  struct request_sock *req, *head = lopt->syn_table[j];

  reqnum = 0;
  for (req = head; req; reqnum++, req = req->dl_next) {
   struct inet_request_sock *ireq = inet_rsk(req);

   if (reqnum < s_reqnum)
    continue;
   if (r->id.idiag_dport != ireq->rmt_port &&
       r->id.idiag_dport)
    continue;

   if (bc) {
    entry.saddr =




     &ireq->loc_addr;
    entry.daddr =




     &ireq->rmt_addr;
    entry.dport = ntohs(ireq->rmt_port);

    if (!inet_diag_bc_run(nla_data(bc),
            nla_len(bc), &entry))
     continue;
   }

   err = inet_diag_fill_req(skb, sk, req,
            NETLINK_CB(cb->skb).pid,
            cb->nlh->nlmsg_seq, cb->nlh);
   if (err < 0) {
    cb->args[3] = j + 1;
    cb->args[4] = reqnum;
    goto out;
   }
  }

  s_reqnum = 0;
 }

out:
 read_unlock_bh(&icsk->icsk_accept_queue.syn_wait_lock);

 return err;
}
