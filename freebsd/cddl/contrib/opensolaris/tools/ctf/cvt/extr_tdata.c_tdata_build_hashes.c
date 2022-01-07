
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int td_iihash; } ;
typedef TYPE_1__ tdata_t ;


 int tdata_build_hashes_common (TYPE_1__*,int ) ;

void
tdata_build_hashes(tdata_t *td)
{
 tdata_build_hashes_common(td, td->td_iihash);
}
