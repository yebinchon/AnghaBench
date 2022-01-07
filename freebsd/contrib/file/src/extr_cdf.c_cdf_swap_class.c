
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** cl_word; int cl_dword; } ;
typedef TYPE_1__ cdf_classid_t ;


 void* CDF_TOLE2 (void*) ;
 int CDF_TOLE4 (int ) ;

void
cdf_swap_class(cdf_classid_t *d)
{
 d->cl_dword = CDF_TOLE4(d->cl_dword);
 d->cl_word[0] = CDF_TOLE2(d->cl_word[0]);
 d->cl_word[1] = CDF_TOLE2(d->cl_word[1]);
}
