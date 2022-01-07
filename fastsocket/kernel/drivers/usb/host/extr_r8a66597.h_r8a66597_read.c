
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct r8a66597 {scalar_t__ reg; } ;


 int inw (scalar_t__) ;

__attribute__((used)) static inline u16 r8a66597_read(struct r8a66597 *r8a66597, unsigned long offset)
{
 return inw(r8a66597->reg + offset);
}
