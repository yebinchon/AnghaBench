
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 scalar_t__ CVMX_TAG_SW_BITS ;
 int cvmx_build_mask (scalar_t__) ;

__attribute__((used)) static inline uint32_t cvmx_pow_tag_get_hw_bits(uint64_t tag)
{
 return tag & cvmx_build_mask(32 - CVMX_TAG_SW_BITS);
}
