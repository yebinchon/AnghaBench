
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ X_add_symbol; } ;
struct TYPE_4__ {int type; TYPE_2__ exp; } ;
struct TYPE_6__ {int instruction; TYPE_1__ reloc; scalar_t__ error; } ;


 scalar_t__ BAD_ARGS ;
 int BFD_RELOC_SCORE_GOT15 ;
 scalar_t__ FAIL ;
 int GP ;
 int REG_TYPE_SCORE ;
 int end_of_line (char*) ;
 TYPE_3__ inst ;
 int my_get_expression (TYPE_2__*,char**) ;
 int reg_required_here (char**,int,int ) ;
 int skip_past_comma (char**) ;
 int skip_whitespace (char*) ;

__attribute__((used)) static void
do_lw_pic (char *str)
{
  int reg_rd;

  skip_whitespace (str);
  if (((reg_rd = reg_required_here (&str, 20, REG_TYPE_SCORE)) == (int) FAIL)
      || (skip_past_comma (&str) == (int) FAIL)
      || (my_get_expression (&inst.reloc.exp, &str) == (int) FAIL)
      || (end_of_line (str) == (int) FAIL))
    {
      return;
    }
  else
    {
      if (inst.reloc.exp.X_add_symbol == 0)
        {
          if (!inst.error)
     inst.error = BAD_ARGS;

          return;
        }

      inst.instruction |= GP << 15;
      inst.reloc.type = BFD_RELOC_SCORE_GOT15;
    }
}
