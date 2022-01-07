
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int32_t ;
typedef int cvmx_fau_tagwait32_t ;
typedef int cvmx_fau_reg_32_t ;


 int __cvmx_fau_atomic_address (int,int ,int ) ;
 int cvmx_read64_int32 (int ) ;

__attribute__((used)) static inline cvmx_fau_tagwait32_t
cvmx_fau_tagwait_fetch_and_add32(cvmx_fau_reg_32_t reg, int32_t value)
{
 union {
  uint64_t i32;
  cvmx_fau_tagwait32_t t;
 } result;
 result.i32 =
     cvmx_read64_int32(__cvmx_fau_atomic_address(1, reg, value));
 return result.t;
}
