
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_11__ {int len; int m; } ;
union cvmx_stxx_spi4_stat {scalar_t__ u64; TYPE_10__ s; } ;
struct TYPE_19__ {int alpha; int max_t; } ;
union cvmx_stxx_spi4_dat {scalar_t__ u64; TYPE_8__ s; } ;
struct TYPE_20__ {int oddpar; int prt3; int prt2; int prt1; int prt0; } ;
union cvmx_stxx_spi4_calx {scalar_t__ u64; TYPE_9__ s; } ;
struct TYPE_15__ {scalar_t__ mintrn; scalar_t__ igntpa; } ;
union cvmx_stxx_arb_ctl {scalar_t__ u64; TYPE_4__ s; } ;
struct TYPE_14__ {int len; int m; } ;
union cvmx_srxx_spi4_stat {scalar_t__ u64; TYPE_3__ s; } ;
struct TYPE_13__ {int oddpar; int prt3; int prt2; int prt1; int prt0; } ;
union cvmx_srxx_spi4_calx {scalar_t__ u64; TYPE_2__ s; } ;
struct TYPE_12__ {int prts; scalar_t__ inf_en; scalar_t__ st_en; } ;
union cvmx_srxx_com_ctl {scalar_t__ u64; TYPE_1__ s; } ;
struct TYPE_17__ {int thresh; } ;
union cvmx_gmxx_tx_spi_thresh {scalar_t__ u64; TYPE_6__ s; } ;
struct TYPE_16__ {int max1; int max2; scalar_t__ slice; } ;
union cvmx_gmxx_tx_spi_max {scalar_t__ u64; TYPE_5__ s; } ;
struct TYPE_18__ {scalar_t__ cont_pkt; scalar_t__ tpa_clr; } ;
union cvmx_gmxx_tx_spi_ctl {scalar_t__ u64; TYPE_7__ s; } ;
typedef int cvmx_spi_mode_t ;


 int CVMX_GMXX_TX_SPI_CTL (int) ;
 int CVMX_GMXX_TX_SPI_MAX (int) ;
 int CVMX_GMXX_TX_SPI_THRESH (int) ;
 int CVMX_SPI_MODE_RX_HALFPLEX ;
 int CVMX_SPI_MODE_TX_HALFPLEX ;
 int CVMX_SRXX_COM_CTL (int) ;
 int CVMX_SRXX_SPI4_CALX (int,int) ;
 int CVMX_SRXX_SPI4_STAT (int) ;
 int CVMX_STXX_ARB_CTL (int) ;
 int CVMX_STXX_SPI4_CALX (int,int) ;
 int CVMX_STXX_SPI4_DAT (int) ;
 int CVMX_STXX_SPI4_STAT (int) ;
 int cvmx_dpop (scalar_t__) ;
 int cvmx_write_csr (int ,scalar_t__) ;

int cvmx_spi_calendar_setup_cb(int interface, cvmx_spi_mode_t mode,
          int num_ports)
{
 int port;
 int index;
 if (mode & CVMX_SPI_MODE_RX_HALFPLEX) {
  union cvmx_srxx_com_ctl srxx_com_ctl;
  union cvmx_srxx_spi4_stat srxx_spi4_stat;


  srxx_com_ctl.u64 = 0;
  srxx_com_ctl.s.prts = num_ports - 1;
  srxx_com_ctl.s.st_en = 0;
  srxx_com_ctl.s.inf_en = 0;
  cvmx_write_csr(CVMX_SRXX_COM_CTL(interface), srxx_com_ctl.u64);


  port = 0;
  index = 0;
  while (port < num_ports) {
   union cvmx_srxx_spi4_calx srxx_spi4_calx;
   srxx_spi4_calx.u64 = 0;
   srxx_spi4_calx.s.prt0 = port++;
   srxx_spi4_calx.s.prt1 = port++;
   srxx_spi4_calx.s.prt2 = port++;
   srxx_spi4_calx.s.prt3 = port++;
   srxx_spi4_calx.s.oddpar =
       ~(cvmx_dpop(srxx_spi4_calx.u64) & 1);
   cvmx_write_csr(CVMX_SRXX_SPI4_CALX(index, interface),
           srxx_spi4_calx.u64);
   index++;
  }
  srxx_spi4_stat.u64 = 0;
  srxx_spi4_stat.s.len = num_ports;
  srxx_spi4_stat.s.m = 1;
  cvmx_write_csr(CVMX_SRXX_SPI4_STAT(interface),
          srxx_spi4_stat.u64);
 }

 if (mode & CVMX_SPI_MODE_TX_HALFPLEX) {
  union cvmx_stxx_arb_ctl stxx_arb_ctl;
  union cvmx_gmxx_tx_spi_max gmxx_tx_spi_max;
  union cvmx_gmxx_tx_spi_thresh gmxx_tx_spi_thresh;
  union cvmx_gmxx_tx_spi_ctl gmxx_tx_spi_ctl;
  union cvmx_stxx_spi4_stat stxx_spi4_stat;
  union cvmx_stxx_spi4_dat stxx_spi4_dat;


  stxx_arb_ctl.u64 = 0;
  stxx_arb_ctl.s.igntpa = 0;
  stxx_arb_ctl.s.mintrn = 0;
  cvmx_write_csr(CVMX_STXX_ARB_CTL(interface), stxx_arb_ctl.u64);

  gmxx_tx_spi_max.u64 = 0;
  gmxx_tx_spi_max.s.max1 = 8;
  gmxx_tx_spi_max.s.max2 = 4;
  gmxx_tx_spi_max.s.slice = 0;
  cvmx_write_csr(CVMX_GMXX_TX_SPI_MAX(interface),
          gmxx_tx_spi_max.u64);

  gmxx_tx_spi_thresh.u64 = 0;
  gmxx_tx_spi_thresh.s.thresh = 4;
  cvmx_write_csr(CVMX_GMXX_TX_SPI_THRESH(interface),
          gmxx_tx_spi_thresh.u64);

  gmxx_tx_spi_ctl.u64 = 0;
  gmxx_tx_spi_ctl.s.tpa_clr = 0;
  gmxx_tx_spi_ctl.s.cont_pkt = 0;
  cvmx_write_csr(CVMX_GMXX_TX_SPI_CTL(interface),
          gmxx_tx_spi_ctl.u64);


  stxx_spi4_dat.u64 = 0;

  stxx_spi4_dat.s.alpha = 32;
  stxx_spi4_dat.s.max_t = 0xFFFF;
  cvmx_write_csr(CVMX_STXX_SPI4_DAT(interface),
          stxx_spi4_dat.u64);


  port = 0;
  index = 0;
  while (port < num_ports) {
   union cvmx_stxx_spi4_calx stxx_spi4_calx;
   stxx_spi4_calx.u64 = 0;
   stxx_spi4_calx.s.prt0 = port++;
   stxx_spi4_calx.s.prt1 = port++;
   stxx_spi4_calx.s.prt2 = port++;
   stxx_spi4_calx.s.prt3 = port++;
   stxx_spi4_calx.s.oddpar =
       ~(cvmx_dpop(stxx_spi4_calx.u64) & 1);
   cvmx_write_csr(CVMX_STXX_SPI4_CALX(index, interface),
           stxx_spi4_calx.u64);
   index++;
  }
  stxx_spi4_stat.u64 = 0;
  stxx_spi4_stat.s.len = num_ports;
  stxx_spi4_stat.s.m = 1;
  cvmx_write_csr(CVMX_STXX_SPI4_STAT(interface),
          stxx_spi4_stat.u64);
 }

 return 0;
}
