
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcxhr_mgr {int dummy; } ;


 int PCXHR_CHIPSC_INIT_VALUE ;
 int PCXHR_CHIPSC_RESET_XILINX ;
 int PCXHR_OUTPL (struct pcxhr_mgr*,int ,int) ;
 int PCXHR_PLX_CHIPSC ;

void pcxhr_reset_xilinx_com(struct pcxhr_mgr *mgr)
{

 PCXHR_OUTPL(mgr, PCXHR_PLX_CHIPSC,
      PCXHR_CHIPSC_INIT_VALUE & ~PCXHR_CHIPSC_RESET_XILINX);
}
