
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonicvibes {scalar_t__ dmaa_port; } ;


 scalar_t__ SV_DMA_COUNT0 ;
 int inl (scalar_t__) ;

__attribute__((used)) static inline unsigned int snd_sonicvibes_getdmaa(struct sonicvibes * sonic)
{
 return (inl(sonic->dmaa_port + SV_DMA_COUNT0) & 0xffffff) + 1;
}
