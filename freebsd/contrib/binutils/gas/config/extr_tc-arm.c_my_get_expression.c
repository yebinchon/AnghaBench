
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ segT ;
struct TYPE_6__ {scalar_t__ X_op; scalar_t__ X_op_symbol; scalar_t__ X_add_symbol; } ;
typedef TYPE_1__ expressionS ;
struct TYPE_7__ {int * error; } ;


 int FAIL ;




 scalar_t__ O_big ;
 scalar_t__ O_illegal ;
 void* _ (char*) ;
 int abort () ;
 scalar_t__ absolute_section ;
 scalar_t__ bss_section ;
 scalar_t__ data_section ;
 scalar_t__ expression (TYPE_1__*) ;
 int in_my_get_expression ;
 char* input_line_pointer ;
 TYPE_4__ inst ;
 int is_immediate_prefix (char) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ text_section ;
 scalar_t__ undefined_section ;
 scalar_t__ unified_syntax ;
 scalar_t__ walk_no_bignums (scalar_t__) ;

__attribute__((used)) static int
my_get_expression (expressionS * ep, char ** str, int prefix_mode)
{
  char * save_in;
  segT seg;


  if (unified_syntax)
    prefix_mode = (prefix_mode == 128) ? prefix_mode
                  : 129;

  switch (prefix_mode)
    {
    case 130: break;
    case 131:
      if (!is_immediate_prefix (**str))
 {
   inst.error = _("immediate expression requires a # prefix");
   return FAIL;
 }
      (*str)++;
      break;
    case 129:
    case 128:
      if (is_immediate_prefix (**str))
 (*str)++;
      break;
    default: abort ();
    }

  memset (ep, 0, sizeof (expressionS));

  save_in = input_line_pointer;
  input_line_pointer = *str;
  in_my_get_expression = 1;
  seg = expression (ep);
  in_my_get_expression = 0;

  if (ep->X_op == O_illegal)
    {

      *str = input_line_pointer;
      input_line_pointer = save_in;
      if (inst.error == ((void*)0))
 inst.error = _("bad expression");
      return 1;
    }
  if (prefix_mode != 128
      && (ep->X_op == O_big
          || (ep->X_add_symbol
       && (walk_no_bignums (ep->X_add_symbol)
           || (ep->X_op_symbol
        && walk_no_bignums (ep->X_op_symbol))))))
    {
      inst.error = _("invalid constant");
      *str = input_line_pointer;
      input_line_pointer = save_in;
      return 1;
    }

  *str = input_line_pointer;
  input_line_pointer = save_in;
  return 0;
}
