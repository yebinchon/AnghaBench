
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uu_avl_pool_t ;
struct TYPE_6__ {char const* fsp_name; TYPE_2__* fsp_set; int * fsp_uge_avl; int * fsp_sc_avl; } ;
typedef TYPE_1__ fs_perm_t ;
struct TYPE_7__ {int * fsps_who_perm_avl_pool; int * fsps_named_set_avl_pool; } ;
typedef TYPE_2__ fs_perm_set_t ;


 int UU_DEFAULT ;
 int bzero (TYPE_1__*,int) ;
 int nomem () ;
 void* uu_avl_create (int *,int *,int ) ;

__attribute__((used)) static inline void
fs_perm_init(fs_perm_t *fsperm, fs_perm_set_t *fspset, const char *fsname)
{
 uu_avl_pool_t *nset_pool = fspset->fsps_named_set_avl_pool;
 uu_avl_pool_t *who_pool = fspset->fsps_who_perm_avl_pool;

 bzero(fsperm, sizeof (fs_perm_t));

 if ((fsperm->fsp_sc_avl = uu_avl_create(nset_pool, ((void*)0), UU_DEFAULT))
     == ((void*)0))
  nomem();

 if ((fsperm->fsp_uge_avl = uu_avl_create(who_pool, ((void*)0), UU_DEFAULT))
     == ((void*)0))
  nomem();

 fsperm->fsp_set = fspset;
 fsperm->fsp_name = fsname;
}
