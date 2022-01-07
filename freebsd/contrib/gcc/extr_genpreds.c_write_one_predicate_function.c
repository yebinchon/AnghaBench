
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pred_data {char* name; int exp; } ;


 int add_mode_tests (struct pred_data*) ;
 int fputs (char*,int ) ;
 int printf (char*,char*) ;
 int stdout ;
 int write_predicate_stmts (int ) ;
 int write_predicate_subfunction (struct pred_data*) ;

__attribute__((used)) static void
write_one_predicate_function (struct pred_data *p)
{
  if (!p->exp)
    return;

  write_predicate_subfunction (p);
  add_mode_tests (p);



  printf ("int\n%s (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)\n{\n",
   p->name);
  write_predicate_stmts (p->exp);
  fputs ("}\n\n", stdout);
}
