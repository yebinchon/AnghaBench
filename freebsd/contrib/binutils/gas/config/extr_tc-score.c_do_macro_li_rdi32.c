
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ X_add_symbol; } ;
struct TYPE_5__ {TYPE_1__ exp; } ;
struct TYPE_6__ {int bwarn; int error; TYPE_2__ reloc; } ;


 scalar_t__ FAIL ;
 int MAX_LITERAL_POOL_SIZE ;
 int REG_TYPE_SCORE ;
 int TRUE ;
 int _ (char*) ;
 int _SIMM16_LA ;
 int _VALUE_HI16 ;
 int append_insn (char*,int ) ;
 int data_op2 (char**,int,int ) ;
 int end_of_line (char*) ;
 TYPE_3__ inst ;
 int reg_required_here (char**,int,int ) ;
 int skip_past_comma (char**) ;
 int skip_whitespace (char*) ;
 int sprintf (char*,char*,int,char*) ;

__attribute__((used)) static void
do_macro_li_rdi32 (char *str){

  int reg_rd;

  skip_whitespace (str);
  if ((reg_rd = reg_required_here (&str, 20, REG_TYPE_SCORE)) == (int) FAIL
      || skip_past_comma (&str) == (int) FAIL)
    {
      return;
    }
  else
    {
      char *keep_data = str;


      if (data_op2 (&str, 1, _SIMM16_LA) != (int) FAIL)
        {
          end_of_line (str);
          return;
        }

      else
        {
          char append_str[MAX_LITERAL_POOL_SIZE];

          str = keep_data;

          if ((data_op2 (&str, 1, _VALUE_HI16) == (int) FAIL)
              || (end_of_line (str) == (int) FAIL))
            {
              return;
            }
          else if (inst.reloc.exp.X_add_symbol)
            {
              inst.error = _("li rd label isn't correct instruction form");
              return;
            }
          else
            {
              sprintf (append_str, "ld_i32hi r%d, %s", reg_rd, keep_data);

              if (append_insn (append_str, TRUE) == (int) FAIL)
  return;
              else
                {
                  sprintf (append_str, "ld_i32lo r%d, %s", reg_rd, keep_data);
                  if (append_insn (append_str, TRUE) == (int) FAIL)
      return;


                  inst.bwarn = -1;
                }
            }
        }
    }
}
