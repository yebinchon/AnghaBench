
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_hsotg_ep {scalar_t__ periodic; int dir_in; } ;
struct s3c_hsotg {struct s3c_hsotg_ep* eps; } ;


 int S3C_HSOTG_EPS ;
 int s3c_hsotg_trytx (struct s3c_hsotg*,struct s3c_hsotg_ep*) ;

__attribute__((used)) static void s3c_hsotg_irq_fifoempty(struct s3c_hsotg *hsotg, bool periodic)
{
 struct s3c_hsotg_ep *ep;
 int epno, ret;



 for (epno = 0; epno < S3C_HSOTG_EPS; epno++) {
  ep = &hsotg->eps[epno];

  if (!ep->dir_in)
   continue;

  if ((periodic && !ep->periodic) ||
      (!periodic && ep->periodic))
   continue;

  ret = s3c_hsotg_trytx(hsotg, ep);
  if (ret < 0)
   break;
 }
}
