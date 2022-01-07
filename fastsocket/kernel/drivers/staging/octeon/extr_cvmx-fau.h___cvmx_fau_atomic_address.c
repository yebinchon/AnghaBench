
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int64_t ;


 int CVMX_ADD_IO_SEG (int ) ;
 int CVMX_FAU_BITS_INEVAL ;
 int CVMX_FAU_BITS_REGISTER ;
 int CVMX_FAU_BITS_TAGWAIT ;
 int CVMX_FAU_LOAD_IO_ADDRESS ;
 int cvmx_build_bits (int ,int) ;

__attribute__((used)) static inline uint64_t __cvmx_fau_atomic_address(uint64_t tagwait, uint64_t reg,
       int64_t value)
{
 return CVMX_ADD_IO_SEG(CVMX_FAU_LOAD_IO_ADDRESS) |
        cvmx_build_bits(CVMX_FAU_BITS_INEVAL, value) |
        cvmx_build_bits(CVMX_FAU_BITS_TAGWAIT, tagwait) |
        cvmx_build_bits(CVMX_FAU_BITS_REGISTER, reg);
}
