
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned char locase(unsigned char *dir, unsigned char a)
{
 if (a<128 || a==255) return a>='A' && a<='Z' ? a + 0x20 : a;
 if (!dir) return a;
 return dir[a];
}
