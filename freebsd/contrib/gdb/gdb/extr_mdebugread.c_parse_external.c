
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef union aux_ext {int dummy; } aux_ext ;
struct section_offsets {int dummy; } ;
struct objfile {int dummy; } ;
struct TYPE_10__ {scalar_t__ ssext; TYPE_4__* fdr; union aux_ext* external_aux; } ;
struct TYPE_9__ {int iauxBase; } ;
struct TYPE_8__ {scalar_t__ sc; int st; scalar_t__ iss; } ;
struct TYPE_7__ {scalar_t__ ifd; TYPE_2__ asym; } ;
typedef TYPE_1__ EXTR ;


 int SC_IS_COMMON (scalar_t__) ;
 scalar_t__ SC_IS_UNDEF (scalar_t__) ;
 int cur_fd ;
 TYPE_4__* cur_fdr ;
 TYPE_5__* debug_info ;
 int fdr_name (TYPE_4__*) ;
 scalar_t__ ifdNil ;
 scalar_t__ info_verbose ;
 int n_undef_labels ;
 int n_undef_procs ;
 int n_undef_symbols ;
 int n_undef_vars ;
 int parse_symbol (TYPE_2__*,union aux_ext*,char*,int,struct section_offsets*,struct objfile*) ;
 int printf_filtered (char*,char*,scalar_t__,int ) ;
 scalar_t__ scNil ;






__attribute__((used)) static void
parse_external (EXTR *es, int bigend, struct section_offsets *section_offsets,
  struct objfile *objfile)
{
  union aux_ext *ax;

  if (es->ifd != ifdNil)
    {
      cur_fd = es->ifd;
      cur_fdr = debug_info->fdr + cur_fd;
      ax = debug_info->external_aux + cur_fdr->iauxBase;
    }
  else
    {
      cur_fdr = debug_info->fdr;
      ax = 0;
    }


  if (SC_IS_UNDEF (es->asym.sc) || es->asym.sc == scNil)
    {
      char *what;
      switch (es->asym.st)
 {
 case 130:


   return;
 case 128:
 case 129:
   what = "procedure";
   n_undef_procs++;
   break;
 case 132:
   what = "variable";
   n_undef_vars++;
   break;
 case 131:
   what = "label";
   n_undef_labels++;
   break;
 default:
   what = "symbol";
   break;
 }
      n_undef_symbols++;

      if (info_verbose)
 printf_filtered ("Warning: %s `%s' is undefined (in %s)\n",
    what, debug_info->ssext + es->asym.iss,
    fdr_name (cur_fdr));
      return;
    }

  switch (es->asym.st)
    {
    case 129:
    case 128:
      break;
    case 132:
    case 131:


      if (SC_IS_COMMON (es->asym.sc))
 break;



      parse_symbol (&es->asym, ax, (char *) ((void*)0), bigend, section_offsets, objfile);
      break;
    default:
      break;
    }
}
