
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_set {scalar_t__ ref; char const* name; } ;
typedef size_t ip_set_id_t ;


 int BUG_ON (int) ;
 struct ip_set** ip_set_list ;

const char *
ip_set_name_byindex(ip_set_id_t index)
{
 const struct ip_set *set = ip_set_list[index];

 BUG_ON(set == ((void*)0));
 BUG_ON(set->ref == 0);


 return set->name;
}
