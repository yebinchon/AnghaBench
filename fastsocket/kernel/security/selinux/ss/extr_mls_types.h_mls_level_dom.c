
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mls_level {scalar_t__ sens; int cat; } ;


 scalar_t__ ebitmap_contains (int *,int *) ;
 int selinux_mls_enabled ;

__attribute__((used)) static inline int mls_level_dom(struct mls_level *l1, struct mls_level *l2)
{
 if (!selinux_mls_enabled)
  return 1;

 return ((l1->sens >= l2->sens) &&
  ebitmap_contains(&l1->cat, &l2->cat));
}
