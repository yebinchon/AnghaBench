
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VARENT ;
struct TYPE_3__ {char* ki_args; } ;
typedef TYPE_1__ KINFO ;


 size_t ARGUMENTS_WIDTH ;
 int * STAILQ_NEXT (int *,int ) ;
 int VIS_NL ;
 int VIS_NOSLASH ;
 int VIS_TAB ;
 char* malloc (int) ;
 int next_ve ;
 size_t strlen (char*) ;
 int strvis (char*,char*,int) ;
 int xo_errx (int,char*) ;

char *
arguments(KINFO *k, VARENT *ve)
{
 char *vis_args;

 if ((vis_args = malloc(strlen(k->ki_args) * 4 + 1)) == ((void*)0))
  xo_errx(1, "malloc failed");
 strvis(vis_args, k->ki_args, VIS_TAB | VIS_NL | VIS_NOSLASH);

 if (STAILQ_NEXT(ve, next_ve) != ((void*)0) && strlen(vis_args) > ARGUMENTS_WIDTH)
  vis_args[ARGUMENTS_WIDTH] = '\0';

 return (vis_args);
}
