
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_detail {int dummy; } ;


 int printk (char*,char*) ;

__attribute__((used)) static void
warn_no_idmapd(struct cache_detail *detail, int has_died)
{
 printk("nfsd: nfsv4 idmapping failing: has idmapd %s?\n",
   has_died ? "died" : "not been started");
}
