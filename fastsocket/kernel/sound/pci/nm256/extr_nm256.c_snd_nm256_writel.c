
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nm256 {scalar_t__ cport; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void
snd_nm256_writel(struct nm256 *chip, int offset, u32 val)
{
 writel(val, chip->cport + offset);
}
