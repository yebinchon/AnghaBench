
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int8_t ;
typedef int cvmx_fau_reg_8_t ;


 int CVMX_FAU_OP_SIZE_8 ;
 int __cvmx_fau_iobdma_data (int ,int ,int,int ,int ) ;
 int cvmx_send_single (int ) ;

__attribute__((used)) static inline void cvmx_fau_async_tagwait_fetch_and_add8(uint64_t scraddr,
        cvmx_fau_reg_8_t reg,
        int8_t value)
{
 cvmx_send_single(__cvmx_fau_iobdma_data
    (scraddr, value, 1, CVMX_FAU_OP_SIZE_8, reg));
}
