
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ en; } ;
union cvmx_pip_tag_incx {scalar_t__ u64; TYPE_1__ s; } ;
typedef int uint64_t ;


 int CVMX_PIP_TAG_INCX (int) ;
 int cvmx_write_csr (int ,scalar_t__) ;

__attribute__((used)) static inline void cvmx_pip_tag_mask_clear(uint64_t mask_index)
{
 uint64_t index;
 union cvmx_pip_tag_incx pip_tag_incx;
 pip_tag_incx.u64 = 0;
 pip_tag_incx.s.en = 0;
 for (index = mask_index * 16; index < (mask_index + 1) * 16; index++)
  cvmx_write_csr(CVMX_PIP_TAG_INCX(index), pip_tag_incx.u64);
}
