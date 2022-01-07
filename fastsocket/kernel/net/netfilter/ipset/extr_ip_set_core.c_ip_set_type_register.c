
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_set_type {scalar_t__ protocol; int revision; int family; int name; int list; } ;


 int EINVAL ;
 scalar_t__ IPSET_PROTOCOL ;
 int family_name (int ) ;
 scalar_t__ find_set_type (int ,int ,int ) ;
 int ip_set_type_list ;
 int ip_set_type_lock () ;
 int ip_set_type_unlock () ;
 int list_add_rcu (int *,int *) ;
 int pr_debug (char*,int ,int ,int ) ;
 int pr_warning (char*,int ,int ,int ,...) ;

int
ip_set_type_register(struct ip_set_type *type)
{
 int ret = 0;

 if (type->protocol != IPSET_PROTOCOL) {
  pr_warning("ip_set type %s, family %s, revision %u uses "
      "wrong protocol version %u (want %u)\n",
      type->name, family_name(type->family),
      type->revision, type->protocol, IPSET_PROTOCOL);
  return -EINVAL;
 }

 ip_set_type_lock();
 if (find_set_type(type->name, type->family, type->revision)) {

  pr_warning("ip_set type %s, family %s, revision %u "
      "already registered!\n", type->name,
      family_name(type->family), type->revision);
  ret = -EINVAL;
  goto unlock;
 }
 list_add_rcu(&type->list, &ip_set_type_list);
 pr_debug("type %s, family %s, revision %u registered.\n",
   type->name, family_name(type->family), type->revision);
unlock:
 ip_set_type_unlock();
 return ret;
}
