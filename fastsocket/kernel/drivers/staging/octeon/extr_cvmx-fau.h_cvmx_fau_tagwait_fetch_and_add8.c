
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int8_t ;
typedef int cvmx_fau_tagwait8_t ;
typedef int cvmx_fau_reg_8_t ;


 int __cvmx_fau_atomic_address (int,int ,int ) ;
 int cvmx_read64_int8 (int ) ;

__attribute__((used)) static inline cvmx_fau_tagwait8_t
cvmx_fau_tagwait_fetch_and_add8(cvmx_fau_reg_8_t reg, int8_t value)
{
 union {
  uint64_t i8;
  cvmx_fau_tagwait8_t t;
 } result;
 result.i8 = cvmx_read64_int8(__cvmx_fau_atomic_address(1, reg, value));
 return result.t;
}
