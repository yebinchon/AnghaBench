
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct mtpav {scalar_t__ port; } ;


 scalar_t__ CREG ;
 scalar_t__ SREG ;
 int inb (scalar_t__) ;

__attribute__((used)) static u8 snd_mtpav_getreg(struct mtpav *chip, u16 reg)
{
 u8 rval = 0;

 if (reg == SREG) {
  rval = inb(chip->port + SREG);
  rval = (rval & 0xf8);
 } else if (reg == CREG) {
  rval = inb(chip->port + CREG);
  rval = (rval & 0x1c);
 }

 return rval;
}
