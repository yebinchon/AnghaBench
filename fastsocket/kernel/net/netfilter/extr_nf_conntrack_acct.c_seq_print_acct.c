
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct nf_conn_counter {scalar_t__ bytes; scalar_t__ packets; } ;
struct nf_conn {int dummy; } ;


 struct nf_conn_counter* nf_conn_acct_find (struct nf_conn const*) ;
 unsigned int seq_printf (struct seq_file*,char*,unsigned long long,unsigned long long) ;

unsigned int
seq_print_acct(struct seq_file *s, const struct nf_conn *ct, int dir)
{
 struct nf_conn_counter *acct;

 acct = nf_conn_acct_find(ct);
 if (!acct)
  return 0;

 return seq_printf(s, "packets=%llu bytes=%llu ",
     (unsigned long long)acct[dir].packets,
     (unsigned long long)acct[dir].bytes);
}
