
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zfs_deleg_who_type_t ;
struct TYPE_8__ {char const* who_name; TYPE_3__* who_fsperm; int who_type; int * who_deleg_perm_avl; } ;
typedef TYPE_2__ who_perm_t ;
typedef int uu_avl_pool_t ;
struct TYPE_9__ {TYPE_1__* fsp_set; } ;
typedef TYPE_3__ fs_perm_t ;
struct TYPE_7__ {int * fsps_deleg_perm_avl_pool; } ;


 int UU_DEFAULT ;
 int bzero (TYPE_2__*,int) ;
 int nomem () ;
 int * uu_avl_create (int *,int *,int ) ;

__attribute__((used)) static inline void
who_perm_init(who_perm_t *who_perm, fs_perm_t *fsperm,
    zfs_deleg_who_type_t type, const char *name)
{
 uu_avl_pool_t *pool;
 pool = fsperm->fsp_set->fsps_deleg_perm_avl_pool;

 bzero(who_perm, sizeof (who_perm_t));

 if ((who_perm->who_deleg_perm_avl = uu_avl_create(pool, ((void*)0),
     UU_DEFAULT)) == ((void*)0))
  nomem();

 who_perm->who_type = type;
 who_perm->who_name = name;
 who_perm->who_fsperm = fsperm;
}
