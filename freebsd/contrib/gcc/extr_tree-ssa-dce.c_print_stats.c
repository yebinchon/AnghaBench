
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int removed; int total; scalar_t__ total_phis; int removed_phis; } ;


 int TDF_DETAILS ;
 int TDF_STATS ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fprintf (scalar_t__,char*,int,int,int) ;
 TYPE_1__ stats ;

__attribute__((used)) static void
print_stats (void)
{
  if (dump_file && (dump_flags & (TDF_STATS|TDF_DETAILS)))
    {
      float percg;

      percg = ((float) stats.removed / (float) stats.total) * 100;
      fprintf (dump_file, "Removed %d of %d statements (%d%%)\n",
        stats.removed, stats.total, (int) percg);

      if (stats.total_phis == 0)
 percg = 0;
      else
 percg = ((float) stats.removed_phis / (float) stats.total_phis) * 100;

      fprintf (dump_file, "Removed %d of %d PHI nodes (%d%%)\n",
        stats.removed_phis, stats.total_phis, (int) percg);
    }
}
