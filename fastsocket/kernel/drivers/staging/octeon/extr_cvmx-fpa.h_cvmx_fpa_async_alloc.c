
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int scraddr; int len; scalar_t__ addr; int did; } ;
struct TYPE_4__ {int u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_fpa_iobdma_data_t ;


 int CVMX_FULL_DID (int ,int) ;
 int CVMX_OCT_DID_FPA ;
 int cvmx_send_single (int ) ;

__attribute__((used)) static inline void cvmx_fpa_async_alloc(uint64_t scr_addr, uint64_t pool)
{
 cvmx_fpa_iobdma_data_t data;





 data.s.scraddr = scr_addr >> 3;
 data.s.len = 1;
 data.s.did = CVMX_FULL_DID(CVMX_OCT_DID_FPA, pool);
 data.s.addr = 0;
 cvmx_send_single(data.u64);
}
