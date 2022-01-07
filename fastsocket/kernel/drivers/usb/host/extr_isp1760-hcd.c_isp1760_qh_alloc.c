
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1760_qh {struct isp1760_hcd* priv; int qtd_list; } ;
struct isp1760_hcd {int dummy; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 struct isp1760_qh* kmem_cache_zalloc (int ,int ) ;
 int qh_cachep ;

__attribute__((used)) static struct isp1760_qh *isp1760_qh_alloc(struct isp1760_hcd *priv,
  gfp_t flags)
{
 struct isp1760_qh *qh;

 qh = kmem_cache_zalloc(qh_cachep, flags);
 if (!qh)
  return qh;

 INIT_LIST_HEAD(&qh->qtd_list);
 qh->priv = priv;
 return qh;
}
