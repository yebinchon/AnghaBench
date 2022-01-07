
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ csv_output ;
 char* csv_sep ;
 int fprintf (int ,char*,...) ;
 int output ;
 double rel_stddev_stats (double,double) ;

__attribute__((used)) static void print_noise_pct(double total, double avg)
{
 double pct = rel_stddev_stats(total, avg);

 if (csv_output)
  fprintf(output, "%s%.2f%%", csv_sep, pct);
 else if (pct)
  fprintf(output, "  ( +-%6.2f%% )", pct);
}
