
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_sb {int dummy; } ;
typedef enum als4k_cr_t { ____Placeholder_als4k_cr_t } als4k_cr_t ;


 int snd_sbmixer_read (struct snd_sb*,int) ;

__attribute__((used)) static inline u8 snd_als4_cr_read(struct snd_sb *chip,
     enum als4k_cr_t reg)
{

 return snd_sbmixer_read(chip, reg | 0xc0);
}
