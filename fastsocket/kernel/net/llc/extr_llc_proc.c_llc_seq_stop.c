
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct seq_file {int dummy; } ;
struct llc_sock {struct llc_sap* sap; } ;
struct TYPE_2__ {int lock; } ;
struct llc_sap {TYPE_1__ sk_list; } ;


 void* SEQ_START_TOKEN ;
 int llc_sap_list_lock ;
 struct llc_sock* llc_sk (struct sock*) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static void llc_seq_stop(struct seq_file *seq, void *v)
{
 if (v && v != SEQ_START_TOKEN) {
  struct sock *sk = v;
  struct llc_sock *llc = llc_sk(sk);
  struct llc_sap *sap = llc->sap;

  read_unlock_bh(&sap->sk_list.lock);
 }
 read_unlock_bh(&llc_sap_list_lock);
}
