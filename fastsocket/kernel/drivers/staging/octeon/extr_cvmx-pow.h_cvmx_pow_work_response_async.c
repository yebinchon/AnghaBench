
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int cvmx_wqe_t ;
struct TYPE_3__ {int addr; scalar_t__ no_work; } ;
struct TYPE_4__ {TYPE_1__ s_work; int u64; } ;
typedef TYPE_2__ cvmx_pow_tag_load_resp_t ;


 int CVMX_SYNCIOBDMA ;
 scalar_t__ cvmx_phys_to_ptr (int ) ;
 int cvmx_scratch_read64 (int) ;

__attribute__((used)) static inline cvmx_wqe_t *cvmx_pow_work_response_async(int scr_addr)
{
 cvmx_pow_tag_load_resp_t result;

 CVMX_SYNCIOBDMA;
 result.u64 = cvmx_scratch_read64(scr_addr);

 if (result.s_work.no_work)
  return ((void*)0);
 else
  return (cvmx_wqe_t *) cvmx_phys_to_ptr(result.s_work.addr);
}
