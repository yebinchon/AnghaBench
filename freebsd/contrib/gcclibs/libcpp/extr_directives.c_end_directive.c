
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int save_comments; scalar_t__ angled_headers; scalar_t__ in_expression; scalar_t__ in_directive; int prevent_expansion; scalar_t__ in_deferred_pragma; } ;
struct TYPE_8__ {int base; } ;
struct TYPE_10__ {int * directive; TYPE_2__ state; TYPE_1__ base_run; int cur_token; TYPE_1__* cur_run; int keep_tokens; } ;
typedef TYPE_3__ cpp_reader ;


 scalar_t__ CPP_OPTION (TYPE_3__*,int ) ;
 size_t T_DEFINE ;
 int _cpp_remove_overlay (TYPE_3__*) ;
 int discard_comments ;
 int * dtable ;
 int skip_rest_of_line (TYPE_3__*) ;
 int traditional ;

__attribute__((used)) static void
end_directive (cpp_reader *pfile, int skip_line)
{
  if (pfile->state.in_deferred_pragma)
    ;
  else if (CPP_OPTION (pfile, traditional))
    {

      pfile->state.prevent_expansion--;

      if (pfile->directive != &dtable[T_DEFINE])
 _cpp_remove_overlay (pfile);
    }

  else if (skip_line)
    {
      skip_rest_of_line (pfile);
      if (!pfile->keep_tokens)
 {
   pfile->cur_run = &pfile->base_run;
   pfile->cur_token = pfile->base_run.base;
 }
    }


  pfile->state.save_comments = ! CPP_OPTION (pfile, discard_comments);
  pfile->state.in_directive = 0;
  pfile->state.in_expression = 0;
  pfile->state.angled_headers = 0;
  pfile->directive = 0;
}
