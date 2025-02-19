
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct set_telem {int dummy; } ;
struct set_elem {int dummy; } ;
struct nlattr {int dummy; } ;
struct ip_set {int * variant; } ;


 int ENOMEM ;
 size_t IPSET_ATTR_SIZE ;
 size_t IPSET_ATTR_TIMEOUT ;
 int IPSET_ERR_PROTOCOL ;
 int IPSET_NO_TIMEOUT ;
 scalar_t__ IP_SET_LIST_DEFAULT_SIZE ;
 scalar_t__ IP_SET_LIST_MIN_SIZE ;
 int init_list_set (struct ip_set*,scalar_t__,int,int ) ;
 scalar_t__ ip_set_get_h32 (struct nlattr*) ;
 int ip_set_optattr_netorder (struct nlattr**,size_t) ;
 int ip_set_timeout_uget (struct nlattr*) ;
 int list_set ;
 int list_set_gc_init (struct ip_set*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
list_set_create(struct ip_set *set, struct nlattr *tb[], u32 flags)
{
 u32 size = IP_SET_LIST_DEFAULT_SIZE;

 if (unlikely(!ip_set_optattr_netorder(tb, IPSET_ATTR_SIZE) ||
       !ip_set_optattr_netorder(tb, IPSET_ATTR_TIMEOUT)))
  return -IPSET_ERR_PROTOCOL;

 if (tb[IPSET_ATTR_SIZE])
  size = ip_set_get_h32(tb[IPSET_ATTR_SIZE]);
 if (size < IP_SET_LIST_MIN_SIZE)
  size = IP_SET_LIST_MIN_SIZE;

 if (tb[IPSET_ATTR_TIMEOUT]) {
  if (!init_list_set(set, size, sizeof(struct set_telem),
       ip_set_timeout_uget(tb[IPSET_ATTR_TIMEOUT])))
   return -ENOMEM;

  list_set_gc_init(set);
 } else {
  if (!init_list_set(set, size, sizeof(struct set_elem),
       IPSET_NO_TIMEOUT))
   return -ENOMEM;
 }
 set->variant = &list_set;
 return 0;
}
