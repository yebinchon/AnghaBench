
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int cvmx_fau_reg_64_t ;


 int __cvmx_fau_atomic_address (int ,int ,int ) ;
 int cvmx_read64_int64 (int ) ;

__attribute__((used)) static inline int64_t cvmx_fau_fetch_and_add64(cvmx_fau_reg_64_t reg,
            int64_t value)
{
 return cvmx_read64_int64(__cvmx_fau_atomic_address(0, reg, value));
}
