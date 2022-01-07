
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct update {int set; int rb; int addr; int rb_bcast; int rb_mask; int ifindex; } ;
struct snmp_dependency {int dummy; } ;
struct snmp_context {int dummy; } ;
struct mibifa {int flags; int inbcast; int inmask; } ;
typedef enum snmp_depop { ____Placeholder_snmp_depop } snmp_depop ;


 int MIBIFA_DESTROYED ;
 int RB_CREATE ;
 int RB_DESTROY ;
 int RB_MODIFY ;



 int SNMP_ERR_INCONS_NAME ;
 int SNMP_ERR_NOERROR ;
 int TAILQ_REMOVE (int *,struct mibifa*,int ) ;
 int UPD_IFINDEX ;
 int abort () ;
 int create (struct update*) ;
 int destroy (struct snmp_context*,struct update*,struct mibifa*) ;
 int free (struct mibifa*) ;
 int link ;
 struct mibifa* mib_find_ifa (int ) ;
 int mib_iflist_bad ;
 int mib_uncreate_ifa (struct mibifa*) ;
 int mib_undestroy_ifa (struct mibifa*) ;
 int mib_unmodify_ifa (struct mibifa*) ;
 int mibifa_list ;
 int modify (struct update*,struct mibifa*) ;

__attribute__((used)) static int
update_func(struct snmp_context *ctx, struct snmp_dependency *dep,
    enum snmp_depop op)
{
 struct update *upd = (struct update *)dep;
 struct mibifa *ifa;

 switch (op) {

   case 130:
  if ((ifa = mib_find_ifa(upd->addr)) == ((void*)0)) {

   if (!(upd->set & UPD_IFINDEX))
    return (SNMP_ERR_INCONS_NAME);
   return (create(upd));
  }

  if ((upd->set & UPD_IFINDEX) && upd->ifindex == 0) {

   return (destroy(ctx, upd, ifa));
  }

  return (modify(upd, ifa));

   case 128:
  if ((ifa = mib_find_ifa(upd->addr)) == ((void*)0)) {

   mib_iflist_bad = 1;
   return (SNMP_ERR_NOERROR);
  }
  if (upd->rb & RB_CREATE) {
   mib_uncreate_ifa(ifa);
   return (SNMP_ERR_NOERROR);
  }
  if (upd->rb & RB_DESTROY) {
   mib_undestroy_ifa(ifa);
   return (SNMP_ERR_NOERROR);
  }
  if (upd->rb & RB_MODIFY) {
   ifa->inmask = upd->rb_mask;
   ifa->inbcast = upd->rb_bcast;
   mib_unmodify_ifa(ifa);
   return (SNMP_ERR_NOERROR);
  }
  return (SNMP_ERR_NOERROR);

   case 129:
  if ((upd->rb & RB_DESTROY) &&
      (ifa = mib_find_ifa(upd->addr)) != ((void*)0) &&
      (ifa->flags & MIBIFA_DESTROYED)) {
   TAILQ_REMOVE(&mibifa_list, ifa, link);
   free(ifa);
  }
  return (SNMP_ERR_NOERROR);
 }
 abort();
}
