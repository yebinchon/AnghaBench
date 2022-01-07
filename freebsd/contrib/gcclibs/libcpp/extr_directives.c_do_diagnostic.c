
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int prevent_expansion; int in_diagnostic; } ;
struct TYPE_11__ {TYPE_1__ state; TYPE_3__* directive; TYPE_2__* cur_token; } ;
typedef TYPE_4__ cpp_reader ;
struct TYPE_10__ {char* name; } ;
struct TYPE_9__ {int src_loc; } ;


 scalar_t__ _cpp_begin_message (TYPE_4__*,int,int ,int ) ;
 int cpp_output_line (TYPE_4__*,int ) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
do_diagnostic (cpp_reader *pfile, int code, int print_dir)
{
  if (_cpp_begin_message (pfile, code, pfile->cur_token[-1].src_loc, 0))
    {
      if (print_dir)
 fprintf (stderr, "#%s ", pfile->directive->name);
      pfile->state.prevent_expansion++;

      pfile->state.in_diagnostic++;
      cpp_output_line (pfile, stderr);

      pfile->state.in_diagnostic--;
      pfile->state.prevent_expansion--;
    }
}
