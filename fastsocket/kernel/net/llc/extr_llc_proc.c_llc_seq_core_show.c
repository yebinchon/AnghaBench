
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int tail; } ;
struct sock {TYPE_6__ sk_backlog; } ;
struct seq_file {int dummy; } ;
struct TYPE_11__ {int timer; } ;
struct TYPE_10__ {int timer; } ;
struct TYPE_9__ {int timer; } ;
struct TYPE_8__ {int timer; } ;
struct TYPE_7__ {int lsap; } ;
struct llc_sock {size_t state; TYPE_5__ busy_state_timer; TYPE_4__ rej_sent_timer; TYPE_3__ pf_cycle_timer; TYPE_2__ ack_timer; int cause_flag; int remote_busy_flag; int data_flag; int s_flag; int f_flag; int p_flag; int rw; int k; int retry_count; TYPE_1__ daddr; } ;


 void* SEQ_START_TOKEN ;
 int * llc_conn_state_names ;
 struct llc_sock* llc_sk (struct sock*) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int) ;
 int seq_puts (struct seq_file*,char*) ;
 int sock_owned_by_user (struct sock*) ;
 int timer_pending (int *) ;

__attribute__((used)) static int llc_seq_core_show(struct seq_file *seq, void *v)
{
 struct sock* sk;
 struct llc_sock *llc;

 if (v == SEQ_START_TOKEN) {
  seq_puts(seq, "Connection list:\n"
         "dsap state      retr txw rxw pf ff sf df rs cs "
         "tack tpfc trs tbs blog busr\n");
  goto out;
 }
 sk = v;
 llc = llc_sk(sk);

 seq_printf(seq, " %02X  %-10s %3d  %3d %3d %2d %2d %2d %2d %2d %2d "
   "%4d %4d %3d %3d %4d %4d\n",
     llc->daddr.lsap, llc_conn_state_names[llc->state],
     llc->retry_count, llc->k, llc->rw, llc->p_flag, llc->f_flag,
     llc->s_flag, llc->data_flag, llc->remote_busy_flag,
     llc->cause_flag, timer_pending(&llc->ack_timer.timer),
     timer_pending(&llc->pf_cycle_timer.timer),
     timer_pending(&llc->rej_sent_timer.timer),
     timer_pending(&llc->busy_state_timer.timer),
     !!sk->sk_backlog.tail, !!sock_owned_by_user(sk));
out:
 return 0;
}
