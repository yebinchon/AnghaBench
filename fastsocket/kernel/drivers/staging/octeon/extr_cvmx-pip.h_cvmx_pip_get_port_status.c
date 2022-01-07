
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_15__ ;
typedef struct TYPE_21__ TYPE_14__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_19__ {int pkts; } ;
union cvmx_pip_stat_inb_pktsx {TYPE_12__ s; void* u64; } ;
struct TYPE_20__ {int octs; } ;
union cvmx_pip_stat_inb_octsx {TYPE_13__ s; void* u64; } ;
struct TYPE_21__ {int errs; } ;
union cvmx_pip_stat_inb_errsx {TYPE_14__ s; void* u64; } ;
struct TYPE_23__ {int rdclr; } ;
union cvmx_pip_stat_ctl {scalar_t__ u64; TYPE_1__ s; } ;
struct TYPE_18__ {int jabber; int oversz; } ;
union cvmx_pip_stat9_prtx {TYPE_11__ s; void* u64; } ;
struct TYPE_17__ {int frag; int undersz; } ;
union cvmx_pip_stat8_prtx {TYPE_10__ s; void* u64; } ;
struct TYPE_31__ {int fcs; int h1519; } ;
union cvmx_pip_stat7_prtx {TYPE_9__ s; void* u64; } ;
struct TYPE_30__ {int h1024to1518; int h512to1023; } ;
union cvmx_pip_stat6_prtx {TYPE_8__ s; void* u64; } ;
struct TYPE_29__ {int h256to511; int h128to255; } ;
union cvmx_pip_stat5_prtx {TYPE_7__ s; void* u64; } ;
struct TYPE_28__ {int h65to127; int h64; } ;
union cvmx_pip_stat4_prtx {TYPE_6__ s; void* u64; } ;
struct TYPE_27__ {int bcst; int mcst; } ;
union cvmx_pip_stat3_prtx {TYPE_5__ s; void* u64; } ;
struct TYPE_26__ {int pkts; int raw; } ;
union cvmx_pip_stat2_prtx {TYPE_4__ s; void* u64; } ;
struct TYPE_25__ {scalar_t__ octs; } ;
union cvmx_pip_stat1_prtx {TYPE_3__ s; void* u64; } ;
struct TYPE_24__ {int drp_pkts; scalar_t__ drp_octs; } ;
union cvmx_pip_stat0_prtx {TYPE_2__ s; void* u64; } ;
typedef int uint64_t ;
struct TYPE_22__ {int dropped_packets; int packets; int inb_packets; scalar_t__ dropped_octets; scalar_t__ octets; int inb_octets; int inb_errors; int oversize_crc_packets; int oversize_packets; int runt_crc_packets; int runt_packets; int fcs_align_err_packets; int len_1519_max_packets; int len_1024_1518_packets; int len_512_1023_packets; int len_256_511_packets; int len_128_255_packets; int len_65_127_packets; int len_64_packets; int broadcast_packets; int multicast_packets; int pci_raw_packets; } ;
typedef TYPE_15__ cvmx_pip_port_status_t ;


 int CVMX_PIP_STAT0_PRTX (int ) ;
 int CVMX_PIP_STAT1_PRTX (int ) ;
 int CVMX_PIP_STAT2_PRTX (int ) ;
 int CVMX_PIP_STAT3_PRTX (int ) ;
 int CVMX_PIP_STAT4_PRTX (int ) ;
 int CVMX_PIP_STAT5_PRTX (int ) ;
 int CVMX_PIP_STAT6_PRTX (int ) ;
 int CVMX_PIP_STAT7_PRTX (int ) ;
 int CVMX_PIP_STAT8_PRTX (int ) ;
 int CVMX_PIP_STAT9_PRTX (int ) ;
 int CVMX_PIP_STAT_CTL ;
 int CVMX_PIP_STAT_INB_ERRSX (int ) ;
 int CVMX_PIP_STAT_INB_OCTSX (int ) ;
 int CVMX_PIP_STAT_INB_PKTSX (int ) ;
 scalar_t__ cvmx_octeon_is_pass1 () ;
 void* cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,scalar_t__) ;

__attribute__((used)) static inline void cvmx_pip_get_port_status(uint64_t port_num, uint64_t clear,
         cvmx_pip_port_status_t *status)
{
 union cvmx_pip_stat_ctl pip_stat_ctl;
 union cvmx_pip_stat0_prtx stat0;
 union cvmx_pip_stat1_prtx stat1;
 union cvmx_pip_stat2_prtx stat2;
 union cvmx_pip_stat3_prtx stat3;
 union cvmx_pip_stat4_prtx stat4;
 union cvmx_pip_stat5_prtx stat5;
 union cvmx_pip_stat6_prtx stat6;
 union cvmx_pip_stat7_prtx stat7;
 union cvmx_pip_stat8_prtx stat8;
 union cvmx_pip_stat9_prtx stat9;
 union cvmx_pip_stat_inb_pktsx pip_stat_inb_pktsx;
 union cvmx_pip_stat_inb_octsx pip_stat_inb_octsx;
 union cvmx_pip_stat_inb_errsx pip_stat_inb_errsx;

 pip_stat_ctl.u64 = 0;
 pip_stat_ctl.s.rdclr = clear;
 cvmx_write_csr(CVMX_PIP_STAT_CTL, pip_stat_ctl.u64);

 stat0.u64 = cvmx_read_csr(CVMX_PIP_STAT0_PRTX(port_num));
 stat1.u64 = cvmx_read_csr(CVMX_PIP_STAT1_PRTX(port_num));
 stat2.u64 = cvmx_read_csr(CVMX_PIP_STAT2_PRTX(port_num));
 stat3.u64 = cvmx_read_csr(CVMX_PIP_STAT3_PRTX(port_num));
 stat4.u64 = cvmx_read_csr(CVMX_PIP_STAT4_PRTX(port_num));
 stat5.u64 = cvmx_read_csr(CVMX_PIP_STAT5_PRTX(port_num));
 stat6.u64 = cvmx_read_csr(CVMX_PIP_STAT6_PRTX(port_num));
 stat7.u64 = cvmx_read_csr(CVMX_PIP_STAT7_PRTX(port_num));
 stat8.u64 = cvmx_read_csr(CVMX_PIP_STAT8_PRTX(port_num));
 stat9.u64 = cvmx_read_csr(CVMX_PIP_STAT9_PRTX(port_num));
 pip_stat_inb_pktsx.u64 =
     cvmx_read_csr(CVMX_PIP_STAT_INB_PKTSX(port_num));
 pip_stat_inb_octsx.u64 =
     cvmx_read_csr(CVMX_PIP_STAT_INB_OCTSX(port_num));
 pip_stat_inb_errsx.u64 =
     cvmx_read_csr(CVMX_PIP_STAT_INB_ERRSX(port_num));

 status->dropped_octets = stat0.s.drp_octs;
 status->dropped_packets = stat0.s.drp_pkts;
 status->octets = stat1.s.octs;
 status->pci_raw_packets = stat2.s.raw;
 status->packets = stat2.s.pkts;
 status->multicast_packets = stat3.s.mcst;
 status->broadcast_packets = stat3.s.bcst;
 status->len_64_packets = stat4.s.h64;
 status->len_65_127_packets = stat4.s.h65to127;
 status->len_128_255_packets = stat5.s.h128to255;
 status->len_256_511_packets = stat5.s.h256to511;
 status->len_512_1023_packets = stat6.s.h512to1023;
 status->len_1024_1518_packets = stat6.s.h1024to1518;
 status->len_1519_max_packets = stat7.s.h1519;
 status->fcs_align_err_packets = stat7.s.fcs;
 status->runt_packets = stat8.s.undersz;
 status->runt_crc_packets = stat8.s.frag;
 status->oversize_packets = stat9.s.oversz;
 status->oversize_crc_packets = stat9.s.jabber;
 status->inb_packets = pip_stat_inb_pktsx.s.pkts;
 status->inb_octets = pip_stat_inb_octsx.s.octs;
 status->inb_errors = pip_stat_inb_errsx.s.errs;

 if (cvmx_octeon_is_pass1()) {




  if (status->inb_packets > status->packets)
   status->dropped_packets =
       status->inb_packets - status->packets;
  else
   status->dropped_packets = 0;
  if (status->inb_octets - status->inb_packets * 4 >
      status->octets)
   status->dropped_octets =
       status->inb_octets - status->inb_packets * 4 -
       status->octets;
  else
   status->dropped_octets = 0;
 }
}
