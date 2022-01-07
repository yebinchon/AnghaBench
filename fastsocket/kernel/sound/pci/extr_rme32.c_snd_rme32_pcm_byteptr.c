
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rme32 {scalar_t__ iobase; } ;


 scalar_t__ RME32_IO_GET_POS ;
 unsigned int RME32_RCR_AUDIO_ADDR_MASK ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static inline unsigned int snd_rme32_pcm_byteptr(struct rme32 * rme32)
{
 return (readl(rme32->iobase + RME32_IO_GET_POS)
  & RME32_RCR_AUDIO_ADDR_MASK);
}
