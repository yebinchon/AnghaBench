
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int qi_quotaofflock; int * qi_gquotaip; int * qi_uquotaip; int qi_dqlist_lock; int qi_dqlist; } ;
typedef TYPE_1__ xfs_quotainfo_t ;
struct TYPE_7__ {TYPE_1__* m_quotainfo; } ;
typedef TYPE_2__ xfs_mount_t ;


 int ASSERT (int ) ;
 int IRELE (int *) ;
 int kmem_free (TYPE_1__*) ;
 int list_empty (int *) ;
 int mutex_destroy (int *) ;
 int * xfs_Gqm ;
 int xfs_qm_rele_quotafs_ref (TYPE_2__*) ;

void
xfs_qm_destroy_quotainfo(
 xfs_mount_t *mp)
{
 xfs_quotainfo_t *qi;

 qi = mp->m_quotainfo;
 ASSERT(qi != ((void*)0));
 ASSERT(xfs_Gqm != ((void*)0));






 xfs_qm_rele_quotafs_ref(mp);

 ASSERT(list_empty(&qi->qi_dqlist));
 mutex_destroy(&qi->qi_dqlist_lock);

 if (qi->qi_uquotaip) {
  IRELE(qi->qi_uquotaip);
  qi->qi_uquotaip = ((void*)0);
 }
 if (qi->qi_gquotaip) {
  IRELE(qi->qi_gquotaip);
  qi->qi_gquotaip = ((void*)0);
 }
 mutex_destroy(&qi->qi_quotaofflock);
 kmem_free(qi);
 mp->m_quotainfo = ((void*)0);
}
