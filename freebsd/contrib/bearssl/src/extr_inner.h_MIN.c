
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int GT (int ,int ) ;
 int MUX (int ,int ,int ) ;

__attribute__((used)) static inline uint32_t
MIN(uint32_t x, uint32_t y)
{
 return MUX(GT(x, y), y, x);
}
