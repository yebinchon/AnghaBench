
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int grp_msk; } ;
union cvmx_pow_pp_grp_mskx {int u64; TYPE_1__ s; } ;
typedef int uint64_t ;


 int CVMX_POW_PP_GRP_MSKX (int ) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;

__attribute__((used)) static inline void cvmx_pow_set_group_mask(uint64_t core_num, uint64_t mask)
{
 union cvmx_pow_pp_grp_mskx grp_msk;

 grp_msk.u64 = cvmx_read_csr(CVMX_POW_PP_GRP_MSKX(core_num));
 grp_msk.s.grp_msk = mask;
 cvmx_write_csr(CVMX_POW_PP_GRP_MSKX(core_num), grp_msk.u64);
}
