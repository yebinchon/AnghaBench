
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tout_val; scalar_t__ tout_enb; } ;
union cvmx_iob_fau_timeout {scalar_t__ u64; TYPE_1__ s; } ;


 int CVMX_IOB_FAU_TIMEOUT ;
 int cvmx_write_csr (int ,scalar_t__) ;

__attribute__((used)) static int __cvmx_helper_global_setup_pko(void)
{




 union cvmx_iob_fau_timeout fau_to;
 fau_to.u64 = 0;
 fau_to.s.tout_val = 0xfff;
 fau_to.s.tout_enb = 0;
 cvmx_write_csr(CVMX_IOB_FAU_TIMEOUT, fau_to.u64);
 return 0;
}
