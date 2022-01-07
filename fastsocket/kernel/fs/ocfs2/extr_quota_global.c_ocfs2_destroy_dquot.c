
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dummy; } ;


 int kmem_cache_free (int ,struct dquot*) ;
 int ocfs2_dquot_cachep ;

__attribute__((used)) static void ocfs2_destroy_dquot(struct dquot *dquot)
{
 kmem_cache_free(ocfs2_dquot_cachep, dquot);
}
