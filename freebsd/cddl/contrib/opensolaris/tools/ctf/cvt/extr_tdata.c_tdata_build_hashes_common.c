
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int td_curvgen; } ;
typedef TYPE_1__ tdata_t ;
typedef int hash_t ;


 int build_hashes_cbs ;
 int iitraverse_hash (int *,int *,int *,int *,int ,TYPE_1__*) ;

__attribute__((used)) static void
tdata_build_hashes_common(tdata_t *td, hash_t *hash)
{
 (void) iitraverse_hash(hash, &td->td_curvgen, ((void*)0), ((void*)0),
     build_hashes_cbs, td);
}
