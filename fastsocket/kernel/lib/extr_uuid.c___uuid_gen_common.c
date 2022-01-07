
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __u8 ;


 int memcpy (int*,int *,int) ;
 int random32 () ;

__attribute__((used)) static void __uuid_gen_common(__u8 b[16])
{
 int i;
 u32 r;

 for (i = 0; i < 4; i++) {
  r = random32();
  memcpy(b + i * 4, &r, 4);
 }

 b[8] = (b[8] & 0x3F) | 0x80;
}
