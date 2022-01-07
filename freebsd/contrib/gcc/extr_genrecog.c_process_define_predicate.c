
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pred_data {int special; int* codes; int allows_non_const; int allows_non_lvalue; int singleton; int name; } ;
typedef int rtx ;


 int CONCAT ;
 scalar_t__ DEFINE_SPECIAL_PREDICATE ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GET_RTX_CLASS (int) ;
 int MEM ;
 char N ;
 int NUM_RTX_CODE ;
 int PARALLEL ;
 int REG ;
 scalar_t__ RTX_CONST_OBJ ;
 int STRICT_LOW_PART ;
 int SUBREG ;
 int UNKNOWN ;
 int XEXP (int ,int) ;
 int XSTR (int ,int ) ;
 int add_predicate (struct pred_data*) ;
 int compute_predicate_codes (int ,char*) ;
 struct pred_data* xcalloc (int,int) ;

__attribute__((used)) static void
process_define_predicate (rtx desc)
{
  struct pred_data *pred = xcalloc (sizeof (struct pred_data), 1);
  char codes[NUM_RTX_CODE];
  bool seen_one = 0;
  int i;

  pred->name = XSTR (desc, 0);
  if (GET_CODE (desc) == DEFINE_SPECIAL_PREDICATE)
    pred->special = 1;

  compute_predicate_codes (XEXP (desc, 1), codes);

  for (i = 0; i < NUM_RTX_CODE; i++)
    if (codes[i] != N)
      {
 pred->codes[i] = 1;
 if (GET_RTX_CLASS (i) != RTX_CONST_OBJ)
   pred->allows_non_const = 1;
 if (i != REG
     && i != SUBREG
     && i != MEM
     && i != CONCAT
     && i != PARALLEL
     && i != STRICT_LOW_PART)
   pred->allows_non_lvalue = 1;

 if (seen_one)
   pred->singleton = UNKNOWN;
 else
   {
     pred->singleton = i;
     seen_one = 1;
   }
      }
  add_predicate (pred);
}
