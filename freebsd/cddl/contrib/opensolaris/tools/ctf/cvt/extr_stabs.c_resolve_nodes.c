
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int td_curvgen; int td_iihash; } ;
typedef TYPE_1__ tdata_t ;


 int debug (int,char*) ;
 int iitraverse_hash (int ,int *,int ,int *,int *,TYPE_1__*) ;
 int resolve_cbs ;

__attribute__((used)) static void
resolve_nodes(tdata_t *td)
{
 debug(2, "Resolving unresolved stabs\n");

 (void) iitraverse_hash(td->td_iihash, &td->td_curvgen, resolve_cbs,
     ((void*)0), ((void*)0), td);
}
