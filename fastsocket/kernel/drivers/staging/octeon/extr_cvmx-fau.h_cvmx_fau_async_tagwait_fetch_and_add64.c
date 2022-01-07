
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int64_t ;
typedef int cvmx_fau_reg_64_t ;


 int CVMX_FAU_OP_SIZE_64 ;
 int __cvmx_fau_iobdma_data (int ,int ,int,int ,int ) ;
 int cvmx_send_single (int ) ;

__attribute__((used)) static inline void cvmx_fau_async_tagwait_fetch_and_add64(uint64_t scraddr,
         cvmx_fau_reg_64_t reg,
         int64_t value)
{
 cvmx_send_single(__cvmx_fau_iobdma_data
    (scraddr, value, 1, CVMX_FAU_OP_SIZE_64, reg));
}
