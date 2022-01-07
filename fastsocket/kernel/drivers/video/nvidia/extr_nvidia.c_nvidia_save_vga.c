
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvidia_par {int dummy; } ;
struct _riva_hw_state {int * seq; int * gra; int * attr; int * crtc; int misc_output; } ;


 int NUM_ATC_REGS ;
 int NUM_CRT_REGS ;
 int NUM_GRC_REGS ;
 int NUM_SEQ_REGS ;
 int NVLockUnlock (struct nvidia_par*,int ) ;
 int NVReadAttr (struct nvidia_par*,int) ;
 int NVReadCrtc (struct nvidia_par*,int) ;
 int NVReadGr (struct nvidia_par*,int) ;
 int NVReadMiscOut (struct nvidia_par*) ;
 int NVReadSeq (struct nvidia_par*,int) ;
 int NVTRACE_ENTER () ;
 int NVTRACE_LEAVE () ;
 int NVUnloadStateExt (struct nvidia_par*,struct _riva_hw_state*) ;

__attribute__((used)) static void nvidia_save_vga(struct nvidia_par *par,
       struct _riva_hw_state *state)
{
 int i;

 NVTRACE_ENTER();
 NVLockUnlock(par, 0);

 NVUnloadStateExt(par, state);

 state->misc_output = NVReadMiscOut(par);

 for (i = 0; i < NUM_CRT_REGS; i++)
  state->crtc[i] = NVReadCrtc(par, i);

 for (i = 0; i < NUM_ATC_REGS; i++)
  state->attr[i] = NVReadAttr(par, i);

 for (i = 0; i < NUM_GRC_REGS; i++)
  state->gra[i] = NVReadGr(par, i);

 for (i = 0; i < NUM_SEQ_REGS; i++)
  state->seq[i] = NVReadSeq(par, i);
 NVTRACE_LEAVE();
}
