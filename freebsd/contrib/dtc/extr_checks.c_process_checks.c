
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dt_info {int dummy; } ;
struct check {scalar_t__ error; scalar_t__ warn; } ;


 int ARRAY_SIZE (struct check**) ;
 struct check** check_table ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int quiet ;
 scalar_t__ run_check (struct check*,struct dt_info*) ;
 int stderr ;

void process_checks(bool force, struct dt_info *dti)
{
 int i;
 int error = 0;

 for (i = 0; i < ARRAY_SIZE(check_table); i++) {
  struct check *c = check_table[i];

  if (c->warn || c->error)
   error = error || run_check(c, dti);
 }

 if (error) {
  if (!force) {
   fprintf(stderr, "ERROR: Input tree has errors, aborting "
    "(use -f to force output)\n");
   exit(2);
  } else if (quiet < 3) {
   fprintf(stderr, "Warning: Input tree has errors, "
    "output forced\n");
  }
 }
}
