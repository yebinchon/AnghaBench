
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_udc {int * ep; } ;


 int ECONNABORTED ;
 unsigned int S3C2410_ENDPOINTS ;
 int s3c2410_udc_nuke (struct s3c2410_udc*,int *,int ) ;

__attribute__((used)) static inline void s3c2410_udc_clear_ep_state(struct s3c2410_udc *dev)
{
 unsigned i;





 for (i = 1; i < S3C2410_ENDPOINTS; i++)
  s3c2410_udc_nuke(dev, &dev->ep[i], -ECONNABORTED);
}
