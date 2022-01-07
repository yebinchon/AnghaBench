
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int MAX_CPUS ;
 int _SC_NPROCESSORS_CONF ;
 int exit (int ) ;
 int pr_err (char*,...) ;
 scalar_t__ sysconf (int ) ;

__attribute__((used)) static int get_total_cpus(void)
{
 int nr_cpus = (int)sysconf(_SC_NPROCESSORS_CONF);

 if (nr_cpus <= 0) {
  pr_err("Could not read cpus\n");
  goto error;
 } else if (nr_cpus > MAX_CPUS) {
  pr_err("Exceed max cpus(%d)\n", (int)MAX_CPUS);
  goto error;
 }

 return nr_cpus;

error:
 exit(EXIT_FAILURE);
}
