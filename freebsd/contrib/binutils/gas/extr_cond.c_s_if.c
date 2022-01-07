
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct conditional_frame {int ignoring; TYPE_1__* previous_cframe; scalar_t__ dead_tree; } ;
typedef int operatorT ;
struct TYPE_5__ {scalar_t__ X_add_number; scalar_t__ X_op; } ;
typedef TYPE_2__ expressionS ;
typedef int cframe ;
struct TYPE_4__ {int ignoring; } ;


 scalar_t__ LISTING_SKIP_COND () ;
 scalar_t__ O_constant ;






 int SKIP_WHITESPACE () ;
 int _ (char*) ;
 int abort () ;
 int as_bad (int ) ;
 int cond_obstack ;
 struct conditional_frame* current_cframe ;
 int demand_empty_rest_of_line () ;
 int expression_and_evaluate (TYPE_2__*) ;
 scalar_t__ flag_mri ;
 int initialize_cframe (struct conditional_frame*) ;
 scalar_t__* input_line_pointer ;
 int * is_end_of_line ;
 int listing_list (int) ;
 int mri_comment_end (char*,char) ;
 char* mri_comment_field (char*) ;
 scalar_t__ obstack_copy (int *,struct conditional_frame*,int) ;

void
s_if (int arg)
{
  expressionS operand;
  struct conditional_frame cframe;
  int t;
  char *stop = ((void*)0);
  char stopc;

  if (flag_mri)
    stop = mri_comment_field (&stopc);


  SKIP_WHITESPACE ();

  if (current_cframe != ((void*)0) && current_cframe->ignoring)
    {
      operand.X_add_number = 0;
      while (! is_end_of_line[(unsigned char) *input_line_pointer])
 ++input_line_pointer;
    }
  else
    {
      expression_and_evaluate (&operand);
      if (operand.X_op != O_constant)
 as_bad (_("non-constant expression in \".if\" statement"));
    }

  switch ((operatorT) arg)
    {
    case 133: t = operand.X_add_number == 0; break;
    case 128: t = operand.X_add_number != 0; break;
    case 129: t = operand.X_add_number < 0; break;
    case 130: t = operand.X_add_number <= 0; break;
    case 132: t = operand.X_add_number >= 0; break;
    case 131: t = operand.X_add_number > 0; break;
    default:
      abort ();
      return;
    }



  initialize_cframe (&cframe);
  cframe.ignoring = cframe.dead_tree || ! t;
  current_cframe = ((struct conditional_frame *)
      obstack_copy (&cond_obstack, &cframe, sizeof (cframe)));

  if (LISTING_SKIP_COND ()
      && cframe.ignoring
      && (cframe.previous_cframe == ((void*)0)
   || ! cframe.previous_cframe->ignoring))
    listing_list (2);

  if (flag_mri)
    mri_comment_end (stop, stopc);

  demand_empty_rest_of_line ();
}
