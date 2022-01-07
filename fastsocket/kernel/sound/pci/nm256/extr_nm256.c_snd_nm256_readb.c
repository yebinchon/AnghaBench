
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nm256 {scalar_t__ cport; } ;


 int readb (scalar_t__) ;

__attribute__((used)) static inline u8
snd_nm256_readb(struct nm256 *chip, int offset)
{
 return readb(chip->cport + offset);
}
