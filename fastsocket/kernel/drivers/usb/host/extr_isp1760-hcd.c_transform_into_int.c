
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct urb {int dummy; } ;
struct ptd {int dummy; } ;
struct isp1760_qtd {int dummy; } ;
struct isp1760_qh {int dummy; } ;
struct isp1760_hcd {int dummy; } ;


 int transform_add_int (struct isp1760_hcd*,struct isp1760_qh*,struct isp1760_qtd*,struct urb*,int ,struct ptd*) ;
 int transform_into_atl (struct isp1760_hcd*,struct isp1760_qh*,struct isp1760_qtd*,struct urb*,int ,struct ptd*) ;

__attribute__((used)) static void transform_into_int(struct isp1760_hcd *priv, struct isp1760_qh *qh,
   struct isp1760_qtd *qtd, struct urb *urb,
   u32 payload, struct ptd *ptd)
{
 transform_into_atl(priv, qh, qtd, urb, payload, ptd);
 transform_add_int(priv, qh, qtd, urb, payload, ptd);
}
