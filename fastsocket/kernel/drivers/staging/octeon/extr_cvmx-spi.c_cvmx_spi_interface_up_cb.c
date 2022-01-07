
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int inf_en; } ;
union cvmx_stxx_com_ctl {void* u64; TYPE_2__ s; } ;
struct TYPE_6__ {int inf_en; } ;
union cvmx_srxx_com_ctl {void* u64; TYPE_1__ s; } ;
struct TYPE_10__ {int cnt; } ;
union cvmx_gmxx_rxx_jabber {void* u64; TYPE_5__ s; } ;
struct TYPE_8__ {int len; } ;
union cvmx_gmxx_rxx_frm_min {void* u64; TYPE_3__ s; } ;
struct TYPE_9__ {int len; } ;
union cvmx_gmxx_rxx_frm_max {void* u64; TYPE_4__ s; } ;
typedef int cvmx_spi_mode_t ;


 int CVMX_GMXX_RXX_FRM_MAX (int ,int) ;
 int CVMX_GMXX_RXX_FRM_MIN (int ,int) ;
 int CVMX_GMXX_RXX_JABBER (int ,int) ;
 int CVMX_SPI_MODE_RX_HALFPLEX ;
 int CVMX_SPI_MODE_TX_HALFPLEX ;
 int CVMX_SRXX_COM_CTL (int) ;
 int CVMX_STXX_COM_CTL (int) ;
 int cvmx_dprintf (char*,int) ;
 void* cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,void*) ;

int cvmx_spi_interface_up_cb(int interface, cvmx_spi_mode_t mode)
{
 union cvmx_gmxx_rxx_frm_min gmxx_rxx_frm_min;
 union cvmx_gmxx_rxx_frm_max gmxx_rxx_frm_max;
 union cvmx_gmxx_rxx_jabber gmxx_rxx_jabber;

 if (mode & CVMX_SPI_MODE_RX_HALFPLEX) {
  union cvmx_srxx_com_ctl srxx_com_ctl;
  srxx_com_ctl.u64 = cvmx_read_csr(CVMX_SRXX_COM_CTL(interface));
  srxx_com_ctl.s.inf_en = 1;
  cvmx_write_csr(CVMX_SRXX_COM_CTL(interface), srxx_com_ctl.u64);
  cvmx_dprintf("SPI%d: Rx is now up\n", interface);
 }

 if (mode & CVMX_SPI_MODE_TX_HALFPLEX) {
  union cvmx_stxx_com_ctl stxx_com_ctl;
  stxx_com_ctl.u64 = cvmx_read_csr(CVMX_STXX_COM_CTL(interface));
  stxx_com_ctl.s.inf_en = 1;
  cvmx_write_csr(CVMX_STXX_COM_CTL(interface), stxx_com_ctl.u64);
  cvmx_dprintf("SPI%d: Tx is now up\n", interface);
 }

 gmxx_rxx_frm_min.u64 = 0;
 gmxx_rxx_frm_min.s.len = 64;
 cvmx_write_csr(CVMX_GMXX_RXX_FRM_MIN(0, interface),
         gmxx_rxx_frm_min.u64);
 gmxx_rxx_frm_max.u64 = 0;
 gmxx_rxx_frm_max.s.len = 64 * 1024 - 4;
 cvmx_write_csr(CVMX_GMXX_RXX_FRM_MAX(0, interface),
         gmxx_rxx_frm_max.u64);
 gmxx_rxx_jabber.u64 = 0;
 gmxx_rxx_jabber.s.cnt = 64 * 1024 - 4;
 cvmx_write_csr(CVMX_GMXX_RXX_JABBER(0, interface), gmxx_rxx_jabber.u64);

 return 0;
}
