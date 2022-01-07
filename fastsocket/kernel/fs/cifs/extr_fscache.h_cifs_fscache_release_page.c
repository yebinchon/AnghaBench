
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;



__attribute__((used)) static inline int cifs_fscache_release_page(struct page *page, gfp_t gfp)
{
 return 1;
}
