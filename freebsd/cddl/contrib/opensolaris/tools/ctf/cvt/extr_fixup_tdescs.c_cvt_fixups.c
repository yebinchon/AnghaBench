
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tdata_t ;


 int fix_small_cpu_struct (int *,size_t) ;

void
cvt_fixups(tdata_t *td, size_t ptrsize)
{
 fix_small_cpu_struct(td, ptrsize);
}
