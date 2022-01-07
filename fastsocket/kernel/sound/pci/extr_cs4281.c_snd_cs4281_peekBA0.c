
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs4281 {scalar_t__ ba0; } ;


 unsigned int readl (scalar_t__) ;

__attribute__((used)) static inline unsigned int snd_cs4281_peekBA0(struct cs4281 *chip, unsigned long offset)
{
        return readl(chip->ba0 + offset);
}
