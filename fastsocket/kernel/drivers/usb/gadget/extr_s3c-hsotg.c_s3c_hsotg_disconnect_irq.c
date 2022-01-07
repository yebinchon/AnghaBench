
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_hsotg {int * eps; } ;


 int ESHUTDOWN ;
 unsigned int S3C_HSOTG_EPS ;
 int call_gadget (struct s3c_hsotg*,int ) ;
 int disconnect ;
 int kill_all_requests (struct s3c_hsotg*,int *,int ,int) ;

__attribute__((used)) static void s3c_hsotg_disconnect_irq(struct s3c_hsotg *hsotg)
{
 unsigned ep;

 for (ep = 0; ep < S3C_HSOTG_EPS; ep++)
  kill_all_requests(hsotg, &hsotg->eps[ep], -ESHUTDOWN, 1);

 call_gadget(hsotg, disconnect);
}
