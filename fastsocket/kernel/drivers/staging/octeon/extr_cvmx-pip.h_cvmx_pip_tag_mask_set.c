
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int en; } ;
union cvmx_pip_tag_incx {int u64; TYPE_1__ s; } ;
typedef int uint64_t ;


 int CVMX_PIP_TAG_INCX (int) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;

__attribute__((used)) static inline void cvmx_pip_tag_mask_set(uint64_t mask_index, uint64_t offset,
      uint64_t len)
{
 while (len--) {
  union cvmx_pip_tag_incx pip_tag_incx;
  uint64_t index = mask_index * 16 + offset / 8;
  pip_tag_incx.u64 = cvmx_read_csr(CVMX_PIP_TAG_INCX(index));
  pip_tag_incx.s.en |= 0x80 >> (offset & 0x7);
  cvmx_write_csr(CVMX_PIP_TAG_INCX(index), pip_tag_incx.u64);
  offset++;
 }
}
