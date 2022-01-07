
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct snd_ymfpci {scalar_t__ reg_area_virt; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 snd_ymfpci_readl(struct snd_ymfpci *chip, u32 offset)
{
 return readl(chip->reg_area_virt + offset);
}
