
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char MCT_U232_MSR_CD ;
 unsigned char MCT_U232_MSR_CTS ;
 unsigned char MCT_U232_MSR_DSR ;
 unsigned char MCT_U232_MSR_RI ;
 unsigned int TIOCM_CD ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned int TIOCM_RI ;
 int dbg (char*,unsigned char,unsigned int) ;

__attribute__((used)) static void mct_u232_msr_to_state(unsigned int *control_state,
      unsigned char msr)
{

 if (msr & MCT_U232_MSR_DSR)
  *control_state |= TIOCM_DSR;
 else
  *control_state &= ~TIOCM_DSR;
 if (msr & MCT_U232_MSR_CTS)
  *control_state |= TIOCM_CTS;
 else
  *control_state &= ~TIOCM_CTS;
 if (msr & MCT_U232_MSR_RI)
  *control_state |= TIOCM_RI;
 else
  *control_state &= ~TIOCM_RI;
 if (msr & MCT_U232_MSR_CD)
  *control_state |= TIOCM_CD;
 else
  *control_state &= ~TIOCM_CD;
 dbg("msr_to_state: msr=0x%x ==> state=0x%x", msr, *control_state);
}
