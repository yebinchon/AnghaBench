
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpfs_dirent {int down; int not_8x3; } ;


 int memcpy (char*,char*,int) ;

__attribute__((used)) static inline void copy_de(struct hpfs_dirent *dst, struct hpfs_dirent *src)
{
 int a;
 int n;
 if (!dst || !src) return;
 a = dst->down;
 n = dst->not_8x3;
 memcpy((char *)dst + 2, (char *)src + 2, 28);
 dst->down = a;
 dst->not_8x3 = n;
}
