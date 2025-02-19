
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (unsigned char**) ;
 unsigned char** euc2sjisibm_g3upper_map ;

__attribute__((used)) static inline int euc2sjisibm_g3upper(unsigned char *sjis, const unsigned char euc_hi,
          const unsigned char euc_lo)
{
 int index;

 if (euc_hi == 0xF3)
  index = ((euc_hi << 8) | euc_lo) - 0xF3F3;
 else
  index = ((euc_hi << 8) | euc_lo) - 0xF4A1 + 12;

 if ((index < 0) || (index >= ARRAY_SIZE(euc2sjisibm_g3upper_map)))
  return 0;

 sjis[0] = euc2sjisibm_g3upper_map[index][0];
 sjis[1] = euc2sjisibm_g3upper_map[index][1];

 return 3;
}
