
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int fprintf (int ,char*,char const*,long,long,long) ;
 long get_run_time () ;
 int stderr ;

void
print_time (const char *str, long total)
{
  long all_time = get_run_time ();
  fprintf (stderr,
    _("time in %s: %ld.%06ld (%ld%%)\n"),
    str, total / 1000000, total % 1000000,
    all_time == 0 ? 0
    : (long) (((100.0 * (double) total) / (double) all_time) + .5));
}
