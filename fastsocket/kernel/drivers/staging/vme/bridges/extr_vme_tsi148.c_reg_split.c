
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void reg_split(unsigned long long variable, unsigned int *high,
 unsigned int *low)
{
 *low = (unsigned int)variable & 0xFFFFFFFF;
 *high = (unsigned int)(variable >> 32);
}
