
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct snd_ymfpci {scalar_t__ reg_area_virt; } ;


 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void snd_ymfpci_writeb(struct snd_ymfpci *chip, u32 offset, u8 val)
{
 writeb(val, chip->reg_area_virt + offset);
}
