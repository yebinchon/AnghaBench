
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type_brand_s {int seq; int name; } ;
typedef scalar_t__ splay_tree_key ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
compare_type_brand (splay_tree_key sk1, splay_tree_key sk2)
{
  struct type_brand_s * k1 = (struct type_brand_s *) sk1;
  struct type_brand_s * k2 = (struct type_brand_s *) sk2;

  int value = strcmp(k1->name, k2->name);
  if (value == 0)
    return k2->seq - k1->seq;
  else
    return value;
}
