
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_set {int name; } ;
typedef size_t ip_set_id_t ;


 int EEXIST ;
 int IPSET_ERR_MAX_SETS ;
 size_t IPSET_INVALID_ID ;
 scalar_t__ STREQ (char const*,int ) ;
 struct ip_set** ip_set_list ;
 size_t ip_set_max ;

__attribute__((used)) static int
find_free_id(const char *name, ip_set_id_t *index, struct ip_set **set)
{
 ip_set_id_t i;

 *index = IPSET_INVALID_ID;
 for (i = 0; i < ip_set_max; i++) {
  if (ip_set_list[i] == ((void*)0)) {
   if (*index == IPSET_INVALID_ID)
    *index = i;
  } else if (STREQ(name, ip_set_list[i]->name)) {

   *set = ip_set_list[i];
   return -EEXIST;
  }
 }
 if (*index == IPSET_INVALID_ID)

  return -IPSET_ERR_MAX_SETS;
 return 0;
}
