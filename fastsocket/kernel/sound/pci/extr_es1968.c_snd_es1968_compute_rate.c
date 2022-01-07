
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct es1968 {int clock; } ;



__attribute__((used)) static u32 snd_es1968_compute_rate(struct es1968 *chip, u32 freq)
{
 u32 rate = (freq << 16) / chip->clock;




 return rate;
}
