
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct snd_ymfpci {scalar_t__ reg_area_virt; } ;


 int readb (scalar_t__) ;

__attribute__((used)) static inline u8 snd_ymfpci_readb(struct snd_ymfpci *chip, u32 offset)
{
 return readb(chip->reg_area_virt + offset);
}
