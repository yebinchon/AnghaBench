
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct reserve_info {int dummy; } ;
struct node {int dummy; } ;
struct boot_info {int boot_cpuid_phys; struct node* dt; struct reserve_info* reservelist; } ;


 struct boot_info* xmalloc (int) ;

struct boot_info *build_boot_info(struct reserve_info *reservelist,
      struct node *tree, uint32_t boot_cpuid_phys)
{
 struct boot_info *bi;

 bi = xmalloc(sizeof(*bi));
 bi->reservelist = reservelist;
 bi->dt = tree;
 bi->boot_cpuid_phys = boot_cpuid_phys;

 return bi;
}
