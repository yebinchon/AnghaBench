
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct tagged_tu_seen_cache {int dummy; } ;


 int comptypes_internal (int ,int ) ;
 int free_all_tagged_tu_seen_up_to (struct tagged_tu_seen_cache const*) ;
 struct tagged_tu_seen_cache* tagged_tu_seen_base ;

int
comptypes (tree type1, tree type2)
{
  const struct tagged_tu_seen_cache * tagged_tu_seen_base1 = tagged_tu_seen_base;
  int val;

  val = comptypes_internal (type1, type2);
  free_all_tagged_tu_seen_up_to (tagged_tu_seen_base1);

  return val;
}
