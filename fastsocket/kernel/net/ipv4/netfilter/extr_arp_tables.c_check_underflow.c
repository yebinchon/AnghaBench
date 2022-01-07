
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct arpt_standard_target {unsigned int verdict; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ user; } ;
struct arpt_entry_target {TYPE_2__ u; } ;
struct arpt_entry {int arp; } ;


 unsigned int NF_ACCEPT ;
 unsigned int NF_DROP ;
 int XT_STANDARD_TARGET ;
 struct arpt_entry_target* arpt_get_target (struct arpt_entry*) ;
 scalar_t__ strcmp (int ,int ) ;
 int unconditional (int *) ;

__attribute__((used)) static bool check_underflow(struct arpt_entry *e)
{
 const struct arpt_entry_target *t;
 unsigned int verdict;

 if (!unconditional(&e->arp))
  return 0;
 t = arpt_get_target(e);
 if (strcmp(t->u.user.name, XT_STANDARD_TARGET) != 0)
  return 0;
 verdict = ((struct arpt_standard_target *)t)->verdict;
 verdict = -verdict - 1;
 return verdict == NF_DROP || verdict == NF_ACCEPT;
}
