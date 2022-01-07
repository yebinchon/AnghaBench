
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvlist_prtctl {int nvprt_indentinc; char* nvprt_nmfmt; char* nvprt_eomfmt; char* nvprt_btwnarrfmt; struct nvlist_printops* nvprt_custops; struct nvlist_printops* nvprt_dfltops; scalar_t__ nvprt_btwnarrfmt_nl; scalar_t__ nvprt_indent; int nvprt_indent_mode; int * nvprt_fp; } ;
struct nvlist_printops {int dummy; } ;
typedef int FILE ;


 int NVLIST_INDENT_TABBED ;
 int defprtops ;

__attribute__((used)) static void
prtctl_defaults(FILE *fp, struct nvlist_prtctl *pctl,
    struct nvlist_printops *ops)
{
 pctl->nvprt_fp = fp;
 pctl->nvprt_indent_mode = NVLIST_INDENT_TABBED;
 pctl->nvprt_indent = 0;
 pctl->nvprt_indentinc = 1;
 pctl->nvprt_nmfmt = "%s = ";
 pctl->nvprt_eomfmt = "\n";
 pctl->nvprt_btwnarrfmt = " ";
 pctl->nvprt_btwnarrfmt_nl = 0;

 pctl->nvprt_dfltops = (struct nvlist_printops *)&defprtops;
 pctl->nvprt_custops = ops;
}
