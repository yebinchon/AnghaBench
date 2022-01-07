
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int oddpar; } ;
union cvmx_stxx_spi4_calx {void* u64; TYPE_3__ s; } ;
union cvmx_stxx_int_msk {void* u64; } ;
struct TYPE_8__ {int oddpar; } ;
union cvmx_srxx_spi4_calx {void* u64; TYPE_2__ s; } ;
struct TYPE_11__ {int jitter; int clr_boot; int maxdist; int macro_en; int mux_en; scalar_t__ set_boot; scalar_t__ trntest; } ;
union cvmx_spxx_trn4_ctl {void* u64; TYPE_5__ s; } ;
union cvmx_spxx_int_msk {void* u64; } ;
union cvmx_spxx_dbg_deskew_ctl {void* u64; } ;
struct TYPE_10__ {int runbist; int clkdly; int statrcv; int srxdlck; scalar_t__ rcvtrn; scalar_t__ drptrn; scalar_t__ sndtrn; scalar_t__ statdrv; scalar_t__ seetrn; } ;
union cvmx_spxx_clk_ctl {void* u64; TYPE_4__ s; } ;
struct TYPE_7__ {scalar_t__ stat2; scalar_t__ stat1; scalar_t__ stat0; } ;
union cvmx_spxx_bist_stat {TYPE_1__ s; void* u64; } ;
typedef int uint64_t ;
typedef int cvmx_spi_mode_t ;
struct TYPE_12__ {int cpu_clock_hz; } ;


 int CVMX_SPXX_BIST_STAT (int) ;
 int CVMX_SPXX_CLK_CTL (int) ;
 int CVMX_SPXX_DBG_DESKEW_CTL (int) ;
 int CVMX_SPXX_INT_MSK (int) ;
 int CVMX_SPXX_INT_REG (int) ;
 int CVMX_SPXX_TRN4_CTL (int) ;
 int CVMX_SRXX_COM_CTL (int) ;
 int CVMX_SRXX_SPI4_CALX (int,int) ;
 int CVMX_STXX_COM_CTL (int) ;
 int CVMX_STXX_INT_MSK (int) ;
 int CVMX_STXX_INT_REG (int) ;
 int CVMX_STXX_SPI4_CALX (int,int) ;
 int OCTEON_CN58XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int cvmx_dprintf (char*,int) ;
 void* cvmx_read_csr (int ) ;
 TYPE_6__* cvmx_sysinfo_get () ;
 int cvmx_wait (int) ;
 int cvmx_write_csr (int ,void*) ;

int cvmx_spi_reset_cb(int interface, cvmx_spi_mode_t mode)
{
 union cvmx_spxx_dbg_deskew_ctl spxx_dbg_deskew_ctl;
 union cvmx_spxx_clk_ctl spxx_clk_ctl;
 union cvmx_spxx_bist_stat spxx_bist_stat;
 union cvmx_spxx_int_msk spxx_int_msk;
 union cvmx_stxx_int_msk stxx_int_msk;
 union cvmx_spxx_trn4_ctl spxx_trn4_ctl;
 int index;
 uint64_t MS = cvmx_sysinfo_get()->cpu_clock_hz / 1000;


 spxx_int_msk.u64 = cvmx_read_csr(CVMX_SPXX_INT_MSK(interface));
 cvmx_write_csr(CVMX_SPXX_INT_MSK(interface), 0);
 stxx_int_msk.u64 = cvmx_read_csr(CVMX_STXX_INT_MSK(interface));
 cvmx_write_csr(CVMX_STXX_INT_MSK(interface), 0);


 cvmx_write_csr(CVMX_SRXX_COM_CTL(interface), 0);
 cvmx_write_csr(CVMX_STXX_COM_CTL(interface), 0);
 spxx_clk_ctl.u64 = 0;
 spxx_clk_ctl.s.runbist = 1;
 cvmx_write_csr(CVMX_SPXX_CLK_CTL(interface), spxx_clk_ctl.u64);
 cvmx_wait(10 * MS);
 spxx_bist_stat.u64 = cvmx_read_csr(CVMX_SPXX_BIST_STAT(interface));
 if (spxx_bist_stat.s.stat0)
  cvmx_dprintf
      ("ERROR SPI%d: BIST failed on receive datapath FIFO\n",
       interface);
 if (spxx_bist_stat.s.stat1)
  cvmx_dprintf("ERROR SPI%d: BIST failed on RX calendar table\n",
        interface);
 if (spxx_bist_stat.s.stat2)
  cvmx_dprintf("ERROR SPI%d: BIST failed on TX calendar table\n",
        interface);


 for (index = 0; index < 32; index++) {
  union cvmx_srxx_spi4_calx srxx_spi4_calx;
  union cvmx_stxx_spi4_calx stxx_spi4_calx;

  srxx_spi4_calx.u64 = 0;
  srxx_spi4_calx.s.oddpar = 1;
  cvmx_write_csr(CVMX_SRXX_SPI4_CALX(index, interface),
          srxx_spi4_calx.u64);

  stxx_spi4_calx.u64 = 0;
  stxx_spi4_calx.s.oddpar = 1;
  cvmx_write_csr(CVMX_STXX_SPI4_CALX(index, interface),
          stxx_spi4_calx.u64);
 }


 cvmx_write_csr(CVMX_SPXX_INT_REG(interface),
         cvmx_read_csr(CVMX_SPXX_INT_REG(interface)));
 cvmx_write_csr(CVMX_SPXX_INT_MSK(interface), spxx_int_msk.u64);
 cvmx_write_csr(CVMX_STXX_INT_REG(interface),
         cvmx_read_csr(CVMX_STXX_INT_REG(interface)));
 cvmx_write_csr(CVMX_STXX_INT_MSK(interface), stxx_int_msk.u64);


 spxx_clk_ctl.u64 = 0;
 spxx_clk_ctl.s.seetrn = 0;
 spxx_clk_ctl.s.clkdly = 0x10;
 spxx_clk_ctl.s.runbist = 0;
 spxx_clk_ctl.s.statdrv = 0;

 spxx_clk_ctl.s.statrcv = 1;
 spxx_clk_ctl.s.sndtrn = 0;
 spxx_clk_ctl.s.drptrn = 0;
 spxx_clk_ctl.s.rcvtrn = 0;
 spxx_clk_ctl.s.srxdlck = 0;
 cvmx_write_csr(CVMX_SPXX_CLK_CTL(interface), spxx_clk_ctl.u64);
 cvmx_wait(100 * MS);


 spxx_clk_ctl.s.srxdlck = 1;
 cvmx_write_csr(CVMX_SPXX_CLK_CTL(interface), spxx_clk_ctl.u64);


 cvmx_wait(100 * MS);


 spxx_trn4_ctl.s.trntest = 0;
 spxx_trn4_ctl.s.jitter = 1;
 spxx_trn4_ctl.s.clr_boot = 1;
 spxx_trn4_ctl.s.set_boot = 0;
 if (OCTEON_IS_MODEL(OCTEON_CN58XX))
  spxx_trn4_ctl.s.maxdist = 3;
 else
  spxx_trn4_ctl.s.maxdist = 8;
 spxx_trn4_ctl.s.macro_en = 1;
 spxx_trn4_ctl.s.mux_en = 1;
 cvmx_write_csr(CVMX_SPXX_TRN4_CTL(interface), spxx_trn4_ctl.u64);

 spxx_dbg_deskew_ctl.u64 = 0;
 cvmx_write_csr(CVMX_SPXX_DBG_DESKEW_CTL(interface),
         spxx_dbg_deskew_ctl.u64);

 return 0;
}
