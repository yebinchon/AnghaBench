
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_4__ {char const* single; char const** multi; char const* (* function ) (int ,int ) ;} ;
struct TYPE_6__ {int output_format; TYPE_1__ output; } ;
struct TYPE_5__ {int operand; } ;





 int gcc_assert (int ) ;
 int gcc_unreachable () ;
 TYPE_3__* insn_data ;
 TYPE_2__ recog_data ;
 char const* stub1 (int ,int ) ;
 size_t which_alternative ;

const char *
get_insn_template (int code, rtx insn)
{
  switch (insn_data[code].output_format)
    {
    case 128:
      return insn_data[code].output.single;
    case 129:
      return insn_data[code].output.multi[which_alternative];
    case 130:
      gcc_assert (insn);
      return (*insn_data[code].output.function) (recog_data.operand, insn);

    default:
      gcc_unreachable ();
    }
}
