
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int operatorT ;
struct TYPE_10__ {scalar_t__ X_op; int X_add_number; } ;
typedef TYPE_4__ expressionS ;
struct TYPE_8__ {int line; int file; } ;
struct TYPE_7__ {int line; int file; } ;
struct TYPE_11__ {int dead_tree; int ignoring; TYPE_3__* previous_cframe; TYPE_2__ else_file_line; TYPE_1__ if_file_line; scalar_t__ else_seen; } ;
struct TYPE_9__ {int ignoring; } ;


 scalar_t__ LISTING_SKIP_COND () ;
 scalar_t__ O_constant ;






 int SKIP_WHITESPACE () ;
 int _ (char*) ;
 int abort () ;
 int as_bad (int ) ;
 int as_bad_where (int ,int ,int ) ;
 int as_where (int *,int *) ;
 TYPE_6__* current_cframe ;
 int demand_empty_rest_of_line () ;
 int expression_and_evaluate (TYPE_4__*) ;
 scalar_t__* input_line_pointer ;
 int * is_end_of_line ;
 int listing_list (int) ;

void
s_elseif (int arg)
{
  if (current_cframe == ((void*)0))
    {
      as_bad (_("\".elseif\" without matching \".if\""));
    }
  else if (current_cframe->else_seen)
    {
      as_bad (_("\".elseif\" after \".else\""));
      as_bad_where (current_cframe->else_file_line.file,
      current_cframe->else_file_line.line,
      _("here is the previous \"else\""));
      as_bad_where (current_cframe->if_file_line.file,
      current_cframe->if_file_line.line,
      _("here is the previous \"if\""));
    }
  else
    {
      as_where (&current_cframe->else_file_line.file,
  &current_cframe->else_file_line.line);

      current_cframe->dead_tree |= !current_cframe->ignoring;
      current_cframe->ignoring = current_cframe->dead_tree;
    }

  if (current_cframe == ((void*)0) || current_cframe->ignoring)
    {
      while (! is_end_of_line[(unsigned char) *input_line_pointer])
 ++input_line_pointer;

      if (current_cframe == ((void*)0))
 return;
    }
  else
    {
      expressionS operand;
      int t;


      SKIP_WHITESPACE ();

      expression_and_evaluate (&operand);
      if (operand.X_op != O_constant)
 as_bad (_("non-constant expression in \".elseif\" statement"));

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

      current_cframe->ignoring = current_cframe->dead_tree || ! t;
    }

  if (LISTING_SKIP_COND ()
      && (current_cframe->previous_cframe == ((void*)0)
   || ! current_cframe->previous_cframe->ignoring))
    {
      if (! current_cframe->ignoring)
 listing_list (1);
      else
 listing_list (2);
    }

  demand_empty_rest_of_line ();
}
