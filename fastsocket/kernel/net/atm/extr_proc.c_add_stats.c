
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct k_atm_aal_stats {int rx_drop; int rx_err; int rx; int tx_err; int tx; } ;


 int atomic_read (int *) ;
 int seq_printf (struct seq_file*,char*,char const*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void add_stats(struct seq_file *seq, const char *aal,
  const struct k_atm_aal_stats *stats)
{
 seq_printf(seq, "%s ( %d %d %d %d %d )", aal,
     atomic_read(&stats->tx),atomic_read(&stats->tx_err),
     atomic_read(&stats->rx),atomic_read(&stats->rx_err),
     atomic_read(&stats->rx_drop));
}
