
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct r8a66597 {int dummy; } ;


 int r8a66597_read (struct r8a66597*,unsigned long) ;
 int r8a66597_write (struct r8a66597*,int,unsigned long) ;

__attribute__((used)) static inline void r8a66597_mdfy(struct r8a66597 *r8a66597,
     u16 val, u16 pat, unsigned long offset)
{
 u16 tmp;
 tmp = r8a66597_read(r8a66597, offset);
 tmp = tmp & (~pat);
 tmp = tmp | val;
 r8a66597_write(r8a66597, tmp, offset);
}
