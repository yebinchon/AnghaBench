
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zfs_deleg_who_type_t ;
struct TYPE_9__ {char* who_name; char* who_ug_name; int who_type; int * who_deleg_perm_avl; } ;
struct TYPE_11__ {TYPE_1__ who_perm; } ;
typedef TYPE_3__ who_perm_node_t ;
typedef int uu_avl_walk_t ;
typedef int uu_avl_t ;
struct TYPE_10__ {scalar_t__ dp_local; scalar_t__ dp_descend; int dp_name; } ;
struct TYPE_12__ {TYPE_2__ dpn_perm; } ;
typedef TYPE_4__ deleg_perm_node_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int UU_WALK_ROBUST ;






 int assert (int ) ;
 char* gettext (char*) ;
 int nomem () ;
 int printf (char const*,...) ;
 TYPE_4__* uu_avl_first (int *) ;
 TYPE_4__* uu_avl_next (int *,TYPE_4__*) ;
 int uu_avl_walk_end (int *) ;
 TYPE_3__* uu_avl_walk_next (int *) ;
 int * uu_avl_walk_start (int *,int ) ;

__attribute__((used)) static void
print_uge_deleg_perms(uu_avl_t *who_avl, boolean_t local, boolean_t descend,
    const char *title)
{
 who_perm_node_t *who_node = ((void*)0);
 boolean_t prt_title = B_TRUE;
 uu_avl_walk_t *walk;

 if ((walk = uu_avl_walk_start(who_avl, UU_WALK_ROBUST)) == ((void*)0))
  nomem();

 while ((who_node = uu_avl_walk_next(walk)) != ((void*)0)) {
  const char *who_name = who_node->who_perm.who_name;
  const char *nice_who_name = who_node->who_perm.who_ug_name;
  uu_avl_t *avl = who_node->who_perm.who_deleg_perm_avl;
  zfs_deleg_who_type_t who_type = who_node->who_perm.who_type;
  char delim = ' ';
  deleg_perm_node_t *deleg_node;
  boolean_t prt_who = B_TRUE;

  for (deleg_node = uu_avl_first(avl);
      deleg_node != ((void*)0);
      deleg_node = uu_avl_next(avl, deleg_node)) {
   if (local != deleg_node->dpn_perm.dp_local ||
       descend != deleg_node->dpn_perm.dp_descend)
    continue;

   if (prt_who) {
    const char *who = ((void*)0);
    if (prt_title) {
     prt_title = B_FALSE;
     (void) printf(title);
    }

    switch (who_type) {
    case 128:
    case 129:
     who = gettext("user");
     if (nice_who_name)
      who_name = nice_who_name;
     break;
    case 130:
    case 131:
     who = gettext("group");
     if (nice_who_name)
      who_name = nice_who_name;
     break;
    case 132:
    case 133:
     who = gettext("everyone");
     who_name = ((void*)0);
     break;

    default:
     assert(who != ((void*)0));
    }

    prt_who = B_FALSE;
    if (who_name == ((void*)0))
     (void) printf("\t%s", who);
    else
     (void) printf("\t%s %s", who, who_name);
   }

   (void) printf("%c%s", delim,
       deleg_node->dpn_perm.dp_name);
   delim = ',';
  }

  if (!prt_who)
   (void) printf("\n");
 }

 uu_avl_walk_end(walk);
}
