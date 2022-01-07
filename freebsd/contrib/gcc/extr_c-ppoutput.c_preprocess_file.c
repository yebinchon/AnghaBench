
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* buffer; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_15__ {int preprocessed; scalar_t__ directives_only; scalar_t__ traditional; } ;
struct TYPE_14__ {int outf; scalar_t__ printed; } ;
struct TYPE_12__ {scalar_t__ prev; } ;


 int cpp_forall_identifiers (TYPE_2__*,int ,int *) ;
 TYPE_9__* cpp_get_options (TYPE_2__*) ;
 int cpp_scan_nooutput (TYPE_2__*) ;
 int dump_macro ;
 char flag_dump_macros ;
 scalar_t__ flag_no_output ;
 TYPE_6__ print ;
 int putc (char,int ) ;
 int scan_translation_unit (TYPE_2__*) ;
 int scan_translation_unit_directives_only (TYPE_2__*) ;
 int scan_translation_unit_trad (TYPE_2__*) ;

void
preprocess_file (cpp_reader *pfile)
{


  if (flag_no_output)
    {

      while (pfile->buffer->prev)
 cpp_scan_nooutput (pfile);
      cpp_scan_nooutput (pfile);
    }
  else if (cpp_get_options (pfile)->traditional)
    scan_translation_unit_trad (pfile);
  else if (cpp_get_options (pfile)->directives_only
    && !cpp_get_options (pfile)->preprocessed)
    scan_translation_unit_directives_only (pfile);
  else
    scan_translation_unit (pfile);


  if (flag_dump_macros == 'M')
    cpp_forall_identifiers (pfile, dump_macro, ((void*)0));


  if (print.printed)
    putc ('\n', print.outf);
}
