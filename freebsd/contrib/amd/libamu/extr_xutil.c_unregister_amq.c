
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int AMQ_VERSION ;
 int D_AMQ ;
 scalar_t__ amuDebug (int ) ;
 int dlog (char*,int ,int ) ;
 int get_amd_program_number () ;
 int pmap_unset (int ,int ) ;

void
unregister_amq(void)
{

  if (amuDebug(D_AMQ)) {

    u_long amd_prognum = get_amd_program_number();

    if (pmap_unset(amd_prognum, AMQ_VERSION) != 1)
      dlog("failed to de-register Amd program %lu, version %lu",
    amd_prognum, AMQ_VERSION);
  }
}
