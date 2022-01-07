
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_6__ {scalar_t__ stats_reset; } ;
struct TYPE_5__ {scalar_t__ jiffies_init; } ;
struct TYPE_4__ {scalar_t__ function; } ;


 int can_init_stats () ;
 TYPE_3__ can_pstats ;
 scalar_t__ can_stat_update ;
 TYPE_2__ can_stats ;
 TYPE_1__ can_stattimer ;
 scalar_t__ jiffies ;
 int seq_printf (struct seq_file*,char*,scalar_t__) ;
 int user_reset ;

__attribute__((used)) static int can_reset_stats_proc_show(struct seq_file *m, void *v)
{
 user_reset = 1;

 if (can_stattimer.function == can_stat_update) {
  seq_printf(m, "Scheduled statistic reset #%ld.\n",
    can_pstats.stats_reset + 1);

 } else {
  if (can_stats.jiffies_init != jiffies)
   can_init_stats();

  seq_printf(m, "Performed statistic reset #%ld.\n",
    can_pstats.stats_reset);
 }
 return 0;
}
