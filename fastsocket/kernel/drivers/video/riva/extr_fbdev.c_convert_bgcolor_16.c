
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int mb () ;

__attribute__((used)) static inline void convert_bgcolor_16(u32 *col)
{
 *col = ((*col & 0x0000F800) << 8)
  | ((*col & 0x00007E0) << 5)
  | ((*col & 0x0000001F) << 3)
  | 0xFF000000;
 mb();
}
