
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_set {int name; } ;
typedef size_t ip_set_id_t ;


 size_t IPSET_INVALID_ID ;
 scalar_t__ STREQ (int ,char const*) ;
 struct ip_set** ip_set_list ;
 size_t ip_set_max ;

__attribute__((used)) static ip_set_id_t
find_set_id(const char *name)
{
 ip_set_id_t i, index = IPSET_INVALID_ID;
 const struct ip_set *set;

 for (i = 0; index == IPSET_INVALID_ID && i < ip_set_max; i++) {
  set = ip_set_list[i];
  if (set != ((void*)0) && STREQ(set->name, name))
   index = i;
 }
 return index;
}
