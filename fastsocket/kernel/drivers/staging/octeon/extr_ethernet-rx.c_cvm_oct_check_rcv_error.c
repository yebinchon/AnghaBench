
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ pre_chk; } ;
union cvmx_gmxx_rxx_frm_ctl {TYPE_1__ s; int u64; } ;
typedef int uint8_t ;
struct TYPE_12__ {int err_code; } ;
struct TYPE_13__ {TYPE_4__ snoip; } ;
struct TYPE_10__ {int addr; } ;
struct TYPE_11__ {TYPE_2__ s; } ;
struct TYPE_14__ {int len; TYPE_5__ word2; int ipprt; TYPE_3__ packet_ptr; } ;
typedef TYPE_6__ cvmx_wqe_t ;


 int CVMX_GMXX_RXX_FRM_CTL (int,int) ;
 int DEBUGPRINT (char*,int ,...) ;
 scalar_t__ USE_10MBPS_PREAMBLE_WORKAROUND ;
 int cvm_oct_free_work (TYPE_6__*) ;
 int cvmx_helper_get_interface_index_num (int ) ;
 int cvmx_helper_get_interface_num (int ) ;
 int* cvmx_phys_to_ptr (int) ;
 int cvmx_read_csr (int ) ;

__attribute__((used)) static inline int cvm_oct_check_rcv_error(cvmx_wqe_t *work)
{
 if ((work->word2.snoip.err_code == 10) && (work->len <= 64)) {






 } else
     if (USE_10MBPS_PREAMBLE_WORKAROUND
  && ((work->word2.snoip.err_code == 5)
      || (work->word2.snoip.err_code == 7))) {
  int interface = cvmx_helper_get_interface_num(work->ipprt);
  int index = cvmx_helper_get_interface_index_num(work->ipprt);
  union cvmx_gmxx_rxx_frm_ctl gmxx_rxx_frm_ctl;
  gmxx_rxx_frm_ctl.u64 =
      cvmx_read_csr(CVMX_GMXX_RXX_FRM_CTL(index, interface));
  if (gmxx_rxx_frm_ctl.s.pre_chk == 0) {

   uint8_t *ptr =
       cvmx_phys_to_ptr(work->packet_ptr.s.addr);
   int i = 0;

   while (i < work->len - 1) {
    if (*ptr != 0x55)
     break;
    ptr++;
    i++;
   }

   if (*ptr == 0xd5) {



    work->packet_ptr.s.addr += i + 1;
    work->len -= i + 5;
   } else if ((*ptr & 0xf) == 0xd) {



    work->packet_ptr.s.addr += i;
    work->len -= i + 4;
    for (i = 0; i < work->len; i++) {
     *ptr =
         ((*ptr & 0xf0) >> 4) |
         ((*(ptr + 1) & 0xf) << 4);
     ptr++;
    }
   } else {
    DEBUGPRINT("Port %d unknown preamble, packet "
        "dropped\n",
         work->ipprt);



    cvm_oct_free_work(work);
    return 1;
   }
  }
 } else {
  DEBUGPRINT("Port %d receive error code %d, packet dropped\n",
      work->ipprt, work->word2.snoip.err_code);
  cvm_oct_free_work(work);
  return 1;
 }

 return 0;
}
