
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_m3 {int dummy; } ;
struct m3_list {scalar_t__ curlen; scalar_t__ mem_addr; } ;


 int MEMTYPE_INTERNAL_DATA ;
 int snd_m3_assp_write (struct snd_m3*,int ,scalar_t__,int ) ;

__attribute__((used)) static int snd_m3_add_list(struct snd_m3 *chip, struct m3_list *list, u16 val)
{
 snd_m3_assp_write(chip, MEMTYPE_INTERNAL_DATA,
     list->mem_addr + list->curlen,
     val);
 return list->curlen++;
}
