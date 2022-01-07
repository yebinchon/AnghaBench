
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_set {int name; } ;
typedef size_t ip_set_id_t ;


 size_t IPSET_INVALID_ID ;
 scalar_t__ STREQ (int ,char const*) ;
 int __ip_set_get (size_t) ;
 struct ip_set** ip_set_list ;
 size_t ip_set_max ;

ip_set_id_t
ip_set_get_byname(const char *name, struct ip_set **set)
{
 ip_set_id_t i, index = IPSET_INVALID_ID;
 struct ip_set *s;

 for (i = 0; i < ip_set_max; i++) {
  s = ip_set_list[i];
  if (s != ((void*)0) && STREQ(s->name, name)) {
   __ip_set_get(i);
   index = i;
   *set = s;
  }
 }

 return index;
}
