
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;
struct check {scalar_t__ level; } ;
struct boot_info {struct node* dt; } ;


 int ARRAY_SIZE (struct check**) ;
 scalar_t__ IGNORE ;
 struct check** check_table ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int quiet ;
 scalar_t__ run_check (struct check*,struct node*) ;
 int stderr ;

void process_checks(int force, struct boot_info *bi)
{
 struct node *dt = bi->dt;
 int i;
 int error = 0;

 for (i = 0; i < ARRAY_SIZE(check_table); i++) {
  struct check *c = check_table[i];

  if (c->level != IGNORE)
   error = error || run_check(c, dt);
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
