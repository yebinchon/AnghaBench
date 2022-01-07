
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int src_loc; } ;
typedef TYPE_1__ cpp_token ;
struct TYPE_8__ {TYPE_1__* cur_token; TYPE_3__* cur_run; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_9__ {TYPE_1__* base; TYPE_1__* limit; } ;


 TYPE_3__* next_tokenrun (TYPE_3__*) ;

cpp_token *
_cpp_temp_token (cpp_reader *pfile)
{
  cpp_token *old, *result;

  old = pfile->cur_token - 1;
  if (pfile->cur_token == pfile->cur_run->limit)
    {
      pfile->cur_run = next_tokenrun (pfile->cur_run);
      pfile->cur_token = pfile->cur_run->base;
    }

  result = pfile->cur_token++;
  result->src_loc = old->src_loc;
  return result;
}
