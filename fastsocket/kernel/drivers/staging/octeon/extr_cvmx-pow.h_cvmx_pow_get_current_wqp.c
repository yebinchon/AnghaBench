
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int cvmx_wqe_t ;
struct TYPE_5__ {int wqp; } ;
struct TYPE_7__ {TYPE_1__ s_sstatus4; int u64; } ;
typedef TYPE_3__ cvmx_pow_tag_load_resp_t ;
struct TYPE_6__ {int is_io; int get_cur; int get_wqp; int coreid; int did; int mem_region; } ;
struct TYPE_8__ {scalar_t__ u64; TYPE_2__ sstatus; } ;
typedef TYPE_4__ cvmx_pow_load_addr_t ;


 int CVMX_IO_SEG ;
 int CVMX_OCT_DID_TAG_TAG1 ;
 int cvmx_get_core_num () ;
 scalar_t__ cvmx_phys_to_ptr (int ) ;
 int cvmx_read_csr (scalar_t__) ;

__attribute__((used)) static inline cvmx_wqe_t *cvmx_pow_get_current_wqp(void)
{
 cvmx_pow_load_addr_t load_addr;
 cvmx_pow_tag_load_resp_t load_resp;

 load_addr.u64 = 0;
 load_addr.sstatus.mem_region = CVMX_IO_SEG;
 load_addr.sstatus.is_io = 1;
 load_addr.sstatus.did = CVMX_OCT_DID_TAG_TAG1;
 load_addr.sstatus.coreid = cvmx_get_core_num();
 load_addr.sstatus.get_cur = 1;
 load_addr.sstatus.get_wqp = 1;
 load_resp.u64 = cvmx_read_csr(load_addr.u64);
 return (cvmx_wqe_t *) cvmx_phys_to_ptr(load_resp.s_sstatus4.wqp);
}
