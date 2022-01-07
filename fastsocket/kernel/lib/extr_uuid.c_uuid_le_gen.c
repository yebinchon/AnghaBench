
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* b; } ;
typedef TYPE_1__ uuid_le ;


 int __uuid_gen_common (int*) ;

void uuid_le_gen(uuid_le *lu)
{
 __uuid_gen_common(lu->b);

 lu->b[7] = (lu->b[7] & 0x0F) | 0x40;
}
