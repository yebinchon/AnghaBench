
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int zfs_deleg_who_type_t ;
struct TYPE_14__ {int who_ug_name; } ;
typedef TYPE_1__ who_perm_t ;
struct TYPE_15__ {TYPE_1__ who_perm; int who_avl_node; } ;
typedef TYPE_2__ who_perm_node_t ;
typedef int uu_avl_t ;
typedef int uu_avl_pool_t ;
typedef int uu_avl_index_t ;
typedef int uid_t ;
struct passwd {char* pw_name; } ;
struct group {char* gr_name; } ;
typedef int nvpair_t ;
typedef int nvlist_t ;
struct TYPE_16__ {int * fsp_uge_avl; int * fsp_sc_avl; TYPE_4__* fsp_set; } ;
typedef TYPE_3__ fs_perm_t ;
struct TYPE_17__ {int * fsps_who_perm_avl_pool; int * fsps_named_set_avl_pool; } ;
typedef TYPE_4__ fs_perm_set_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_TRUE ;
 int assert (int) ;
 int atoi (char const*) ;
 struct group* getgrgid (int ) ;
 struct passwd* getpwuid (int ) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 scalar_t__ nvpair_value_nvlist (int *,int **) ;
 int parse_who_perm (TYPE_1__*,int *,char) ;
 TYPE_2__* safe_malloc (int) ;
 int strlcpy (int ,char const*,int) ;
 TYPE_2__* uu_avl_find (int *,TYPE_2__*,int *,int *) ;
 int uu_avl_insert (int *,TYPE_2__*,int ) ;
 int uu_avl_node_init (TYPE_2__*,int *,int *) ;
 int who_perm_init (TYPE_1__*,TYPE_3__*,int,char const*) ;

__attribute__((used)) static inline int
parse_fs_perm(fs_perm_t *fsperm, nvlist_t *nvl)
{
 nvpair_t *nvp = ((void*)0);
 fs_perm_set_t *fspset = fsperm->fsp_set;

 while ((nvp = nvlist_next_nvpair(nvl, nvp)) != ((void*)0)) {
  nvlist_t *nvl2 = ((void*)0);
  const char *name = nvpair_name(nvp);
  uu_avl_t *avl = ((void*)0);
  uu_avl_pool_t *avl_pool = ((void*)0);
  zfs_deleg_who_type_t perm_type = name[0];
  char perm_locality = name[1];
  const char *perm_name = name + 3;
  boolean_t is_set = B_TRUE;
  who_perm_t *who_perm = ((void*)0);

  assert('$' == name[2]);

  if (nvpair_value_nvlist(nvp, &nvl2) != 0)
   return (-1);

  switch (perm_type) {
  case 137:
  case 136:
  case 131:
  case 130:
   avl_pool = fspset->fsps_named_set_avl_pool;
   avl = fsperm->fsp_sc_avl;
   break;
  case 129:
  case 128:
  case 133:
  case 132:
  case 135:
  case 134:
   avl_pool = fspset->fsps_who_perm_avl_pool;
   avl = fsperm->fsp_uge_avl;
   break;

  default:
   assert(!"unhandled zfs_deleg_who_type_t");
  }

  if (is_set) {
   who_perm_node_t *found_node = ((void*)0);
   who_perm_node_t *node = safe_malloc(
       sizeof (who_perm_node_t));
   who_perm = &node->who_perm;
   uu_avl_index_t idx = 0;

   uu_avl_node_init(node, &node->who_avl_node, avl_pool);
   who_perm_init(who_perm, fsperm, perm_type, perm_name);

   if ((found_node = uu_avl_find(avl, node, ((void*)0), &idx))
       == ((void*)0)) {
    if (avl == fsperm->fsp_uge_avl) {
     uid_t rid = 0;
     struct passwd *p = ((void*)0);
     struct group *g = ((void*)0);
     const char *nice_name = ((void*)0);

     switch (perm_type) {
     case 128:
     case 129:
      rid = atoi(perm_name);
      p = getpwuid(rid);
      if (p)
       nice_name = p->pw_name;
      break;
     case 132:
     case 133:
      rid = atoi(perm_name);
      g = getgrgid(rid);
      if (g)
       nice_name = g->gr_name;
      break;

     default:
      break;
     }

     if (nice_name != ((void*)0))
      (void) strlcpy(
          node->who_perm.who_ug_name,
          nice_name, 256);
    }

    uu_avl_insert(avl, node, idx);
   } else {
    node = found_node;
    who_perm = &node->who_perm;
   }
  }

  (void) parse_who_perm(who_perm, nvl2, perm_locality);
 }

 return (0);
}
