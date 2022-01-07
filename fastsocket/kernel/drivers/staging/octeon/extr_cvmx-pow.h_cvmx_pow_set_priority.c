
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qos0_pri; int qos1_pri; int qos2_pri; int qos3_pri; int qos4_pri; int qos5_pri; int qos6_pri; int qos7_pri; } ;
union cvmx_pow_pp_grp_mskx {int u64; TYPE_1__ s; } ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;


 int CVMX_POW_PP_GRP_MSKX (int ) ;
 int OCTEON_CN3XXX ;
 int OCTEON_IS_MODEL (int ) ;
 int cvmx_pop (int) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;
 int pr_err (char*,unsigned long long) ;

__attribute__((used)) static inline void cvmx_pow_set_priority(uint64_t core_num,
      const uint8_t priority[])
{

 if (!OCTEON_IS_MODEL(OCTEON_CN3XXX)) {
  union cvmx_pow_pp_grp_mskx grp_msk;

  grp_msk.u64 = cvmx_read_csr(CVMX_POW_PP_GRP_MSKX(core_num));
  grp_msk.s.qos0_pri = priority[0];
  grp_msk.s.qos1_pri = priority[1];
  grp_msk.s.qos2_pri = priority[2];
  grp_msk.s.qos3_pri = priority[3];
  grp_msk.s.qos4_pri = priority[4];
  grp_msk.s.qos5_pri = priority[5];
  grp_msk.s.qos6_pri = priority[6];
  grp_msk.s.qos7_pri = priority[7];


  {
   int i;
   uint32_t prio_mask = 0;

   for (i = 0; i < 8; i++)
    if (priority[i] != 0xF)
     prio_mask |= 1 << priority[i];

   if (prio_mask ^ ((1 << cvmx_pop(prio_mask)) - 1)) {
    pr_err("POW static priorities should be "
           "contiguous (0x%llx)\n",
         (unsigned long long)prio_mask);
    return;
   }
  }

  cvmx_write_csr(CVMX_POW_PP_GRP_MSKX(core_num), grp_msk.u64);
 }
}
