
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tdata_t ;


 int fix_ptr_to_struct (int *) ;
 int fix_ptrptr_to_struct (int *) ;

void
cvt_fixstabs(tdata_t *td)
{
 fix_ptrptr_to_struct(td);
 fix_ptr_to_struct(td);
}
