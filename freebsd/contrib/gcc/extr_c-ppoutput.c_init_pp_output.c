
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int undef; int define; int read_pch; int valid_pch; int include; int def_pragma; int ident; int line_change; } ;
typedef TYPE_1__ cpp_callbacks ;
struct TYPE_7__ {scalar_t__ lang; } ;
struct TYPE_6__ {int src_line; int first_time; int * outf; scalar_t__ prev; scalar_t__ printed; } ;
typedef int FILE ;


 scalar_t__ CLK_ASM ;
 int c_common_valid_pch ;
 int cb_def_pragma ;
 int cb_define ;
 int cb_ident ;
 int cb_include ;
 int cb_line_change ;
 int cb_read_pch ;
 int cb_undef ;
 TYPE_1__* cpp_get_callbacks (int ) ;
 TYPE_3__* cpp_get_options (int ) ;
 scalar_t__ flag_dump_includes ;
 char flag_dump_macros ;
 int flag_no_output ;
 scalar_t__ flag_pch_preprocess ;
 int parse_in ;
 TYPE_2__ print ;

void
init_pp_output (FILE *out_stream)
{
  cpp_callbacks *cb = cpp_get_callbacks (parse_in);

  if (!flag_no_output)
    {
      cb->line_change = cb_line_change;


      if (cpp_get_options (parse_in)->lang != CLK_ASM)
 {
   cb->ident = cb_ident;
   cb->def_pragma = cb_def_pragma;
 }
    }

  if (flag_dump_includes)
    cb->include = cb_include;

  if (flag_pch_preprocess)
    {
      cb->valid_pch = c_common_valid_pch;
      cb->read_pch = cb_read_pch;
    }

  if (flag_dump_macros == 'N' || flag_dump_macros == 'D')
    {
      cb->define = cb_define;
      cb->undef = cb_undef;
    }




  print.src_line = -1;
  print.printed = 0;
  print.prev = 0;
  print.outf = out_stream;
  print.first_time = 1;
}
