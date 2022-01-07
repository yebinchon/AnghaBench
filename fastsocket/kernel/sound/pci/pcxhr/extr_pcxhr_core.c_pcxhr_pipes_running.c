
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcxhr_mgr {int dummy; } ;


 int PCXHR_INPL (struct pcxhr_mgr*,int ) ;
 int PCXHR_PLX_MBOX2 ;
 int snd_printdd (char*,int) ;

__attribute__((used)) static inline int pcxhr_pipes_running(struct pcxhr_mgr *mgr)
{
 int start_mask = PCXHR_INPL(mgr, PCXHR_PLX_MBOX2);





 start_mask &= 0xffffff;
 snd_printdd("CMD_PIPE_STATE MBOX2=0x%06x\n", start_mask);
 return start_mask;
}
