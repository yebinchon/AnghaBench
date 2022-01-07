
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minix_sb_info {int s_dirsize; } ;



__attribute__((used)) static inline void *minix_next_entry(void *de, struct minix_sb_info *sbi)
{
 return (void*)((char*)de + sbi->s_dirsize);
}
