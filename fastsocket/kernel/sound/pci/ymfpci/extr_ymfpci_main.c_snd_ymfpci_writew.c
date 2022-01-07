
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct snd_ymfpci {scalar_t__ reg_area_virt; } ;


 int writew (int ,scalar_t__) ;

__attribute__((used)) static inline void snd_ymfpci_writew(struct snd_ymfpci *chip, u32 offset, u16 val)
{
 writew(val, chip->reg_area_virt + offset);
}
