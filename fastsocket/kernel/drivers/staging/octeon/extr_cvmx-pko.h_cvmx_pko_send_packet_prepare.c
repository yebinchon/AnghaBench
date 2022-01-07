
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int cvmx_wqe_t ;
typedef scalar_t__ cvmx_pko_lock_t ;


 scalar_t__ CVMX_PKO_LOCK_ATOMIC_TAG ;
 int CVMX_POW_TAG_TYPE_ATOMIC ;
 int CVMX_TAG_SUBGROUP_MASK ;
 int CVMX_TAG_SUBGROUP_PKO ;
 int CVMX_TAG_SUBGROUP_SHIFT ;
 int CVMX_TAG_SW_BITS_INTERNAL ;
 int CVMX_TAG_SW_SHIFT ;
 scalar_t__ cvmx_phys_to_ptr (int) ;
 int cvmx_pow_tag_sw_full (int *,int,int ,int ) ;

__attribute__((used)) static inline void cvmx_pko_send_packet_prepare(uint64_t port, uint64_t queue,
      cvmx_pko_lock_t use_locking)
{
 if (use_locking == CVMX_PKO_LOCK_ATOMIC_TAG) {
  uint32_t tag =
      CVMX_TAG_SW_BITS_INTERNAL << CVMX_TAG_SW_SHIFT |
      CVMX_TAG_SUBGROUP_PKO << CVMX_TAG_SUBGROUP_SHIFT |
      (CVMX_TAG_SUBGROUP_MASK & queue);
  cvmx_pow_tag_sw_full((cvmx_wqe_t *) cvmx_phys_to_ptr(0x80), tag,
         CVMX_POW_TAG_TYPE_ATOMIC, 0);
 }
}
