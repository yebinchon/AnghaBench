
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int cvmx_fau_reg_32_t ;


 int __cvmx_fau_store_address (int ,int ) ;
 int cvmx_write64_int32 (int ,int ) ;

__attribute__((used)) static inline void cvmx_fau_atomic_add32(cvmx_fau_reg_32_t reg, int32_t value)
{
 cvmx_write64_int32(__cvmx_fau_store_address(0, reg), value);
}
