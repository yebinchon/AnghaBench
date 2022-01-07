
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int nvlist_t ;
typedef TYPE_1__* nvlist_prtctl_t ;
struct TYPE_5__ {scalar_t__ nvprt_indentinc; int nvprt_indent; int * nvprt_fp; } ;
typedef int FILE ;


 int fprintf (int *,char*,char const*) ;
 int indent (TYPE_1__*,int) ;
 int nvlist_print_with_indent (int *,TYPE_1__*) ;

__attribute__((used)) static int
nvprint_nvlist(nvlist_prtctl_t pctl, void *private,
    nvlist_t *nvl, const char *name, nvlist_t *value)
{
 FILE *fp = pctl->nvprt_fp;

 indent(pctl, 1);
 (void) fprintf(fp, "%s = (embedded nvlist)\n", name);

 pctl->nvprt_indent += pctl->nvprt_indentinc;
 nvlist_print_with_indent(value, pctl);
 pctl->nvprt_indent -= pctl->nvprt_indentinc;

 indent(pctl, 1);
 (void) fprintf(fp, "(end %s)\n", name);

 return (1);
}
