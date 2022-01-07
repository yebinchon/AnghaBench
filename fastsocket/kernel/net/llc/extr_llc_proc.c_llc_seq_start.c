
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;


 void* SEQ_START_TOKEN ;
 void* llc_get_sk_idx (scalar_t__) ;
 int llc_sap_list_lock ;
 int read_lock_bh (int *) ;

__attribute__((used)) static void *llc_seq_start(struct seq_file *seq, loff_t *pos)
{
 loff_t l = *pos;

 read_lock_bh(&llc_sap_list_lock);
 return l ? llc_get_sk_idx(--l) : SEQ_START_TOKEN;
}
