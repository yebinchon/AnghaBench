
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int HOST_FRAME_MASK ;

__attribute__((used)) static inline int frame_after(u16 a, u16 b)
{
 return ((HOST_FRAME_MASK + a - b) & HOST_FRAME_MASK) <
     (HOST_FRAME_MASK / 2);
}
