
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong_t ;
struct TYPE_3__ {int pa_file; } ;
typedef TYPE_1__ dt_printarg_t ;
typedef int ctf_id_t ;


 int fprintf (int ,char*) ;

__attribute__((used)) static void
dt_print_tag(ctf_id_t base, ulong_t off, dt_printarg_t *pap)
{
 (void) fprintf(pap->pa_file, "<forward decl>");
}
