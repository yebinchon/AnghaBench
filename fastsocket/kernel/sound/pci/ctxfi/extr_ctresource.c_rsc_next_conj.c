
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsc {int msr; unsigned int conj; } ;


 unsigned int AUDIO_SLOT_BLOCK_NUM ;

__attribute__((used)) static int rsc_next_conj(struct rsc *rsc)
{
 unsigned int i;
 for (i = 0; (i < 8) && (!(rsc->msr & (0x1 << i))); )
  i++;
 rsc->conj += (AUDIO_SLOT_BLOCK_NUM >> i);
 return rsc->conj;
}
