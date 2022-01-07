
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ffz (unsigned long) ;

__attribute__((used)) static inline unsigned long wait_table_bits(unsigned long size)
{
 return ffz(~size);
}
