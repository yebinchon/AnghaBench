
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;


 scalar_t__ GT (int ,int ) ;

__attribute__((used)) static inline int32_t
CMP(uint32_t x, uint32_t y)
{
 return (int32_t)GT(x, y) | -(int32_t)GT(y, x);
}
