
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int AZX_MAX_CODECS ;
 int snd_BUG () ;

__attribute__((used)) static unsigned int azx_response_addr(u32 res)
{
 unsigned int addr = res & 0xf;

 if (addr >= AZX_MAX_CODECS) {
  snd_BUG();
  addr = 0;
 }

 return addr;
}
