
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int x; } ;
typedef TYPE_1__ p256_jacobian ;


 int le30_to_be8 (unsigned char*,int,int ) ;

__attribute__((used)) static void
p256_encode(void *dst, const p256_jacobian *P)
{
 unsigned char *buf;

 buf = dst;
 buf[0] = 0x04;
 le30_to_be8(buf + 1, 32, P->x);
 le30_to_be8(buf + 33, 32, P->y);
}
