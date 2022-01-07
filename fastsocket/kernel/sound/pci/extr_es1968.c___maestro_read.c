
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct es1968 {int* maestro_map; scalar_t__ io_port; } ;


 scalar_t__ ESM_DATA ;
 scalar_t__ ESM_INDEX ;
 int READABLE_MAP ;
 int inw (scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static u16 __maestro_read(struct es1968 *chip, u16 reg)
{
 if (READABLE_MAP & (1 << reg)) {
  outw(reg, chip->io_port + ESM_INDEX);
  chip->maestro_map[reg] = inw(chip->io_port + ESM_DATA);
 }
 return chip->maestro_map[reg];
}
