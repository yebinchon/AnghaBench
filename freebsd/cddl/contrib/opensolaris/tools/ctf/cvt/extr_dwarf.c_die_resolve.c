
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dw_nunres; TYPE_1__* dw_td; } ;
typedef TYPE_2__ dwarf_t ;
struct TYPE_5__ {int td_curvgen; int td_iihash; } ;


 int debug (int,char*,int,int) ;
 int die_fail_reporters ;
 int die_resolvers ;
 int fprintf (int ,char*,char*) ;
 int iitraverse_hash (int ,int *,int *,int *,int ,TYPE_2__*) ;
 char* progname ;
 int stderr ;
 int terminate (char*) ;

__attribute__((used)) static void
die_resolve(dwarf_t *dw)
{
 int last = -1;
 int pass = 0;

 do {
  pass++;
  dw->dw_nunres = 0;

  (void) iitraverse_hash(dw->dw_td->td_iihash,
      &dw->dw_td->td_curvgen, ((void*)0), ((void*)0), die_resolvers, dw);

  debug(3, "resolve: pass %d, %u left\n", pass, dw->dw_nunres);

  if ((int) dw->dw_nunres == last) {
   fprintf(stderr, "%s: failed to resolve the following "
       "types:\n", progname);

   (void) iitraverse_hash(dw->dw_td->td_iihash,
       &dw->dw_td->td_curvgen, ((void*)0), ((void*)0),
       die_fail_reporters, dw);

   terminate("failed to resolve types\n");
  }

  last = dw->dw_nunres;

 } while (dw->dw_nunres != 0);
}
