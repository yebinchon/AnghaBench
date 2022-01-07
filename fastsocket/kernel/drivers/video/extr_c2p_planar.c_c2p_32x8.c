
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int transp8 (int *,int,int) ;

__attribute__((used)) static void c2p_32x8(u32 d[8])
{
 transp8(d, 16, 4);
 transp8(d, 8, 2);
 transp8(d, 4, 1);
 transp8(d, 2, 4);
 transp8(d, 1, 2);
}
