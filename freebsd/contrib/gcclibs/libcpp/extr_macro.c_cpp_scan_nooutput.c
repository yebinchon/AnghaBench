
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int prevent_expansion; int discarding_output; } ;
struct TYPE_11__ {TYPE_2__ state; TYPE_1__* buffer; } ;
typedef TYPE_3__ cpp_reader ;
struct TYPE_12__ {scalar_t__ type; } ;
struct TYPE_9__ {int return_at_eof; } ;


 scalar_t__ CPP_EOF ;
 scalar_t__ CPP_OPTION (TYPE_3__*,int ) ;
 scalar_t__ _cpp_read_logical_line_trad (TYPE_3__*) ;
 TYPE_5__* cpp_get_token (TYPE_3__*) ;
 int traditional ;

void
cpp_scan_nooutput (cpp_reader *pfile)
{


  pfile->buffer->return_at_eof = 1;

  pfile->state.discarding_output++;
  pfile->state.prevent_expansion++;

  if (CPP_OPTION (pfile, traditional))
    while (_cpp_read_logical_line_trad (pfile))
      ;
  else
    while (cpp_get_token (pfile)->type != CPP_EOF)
      ;

  pfile->state.discarding_output--;
  pfile->state.prevent_expansion--;
}
