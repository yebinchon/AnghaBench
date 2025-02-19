
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iucv_param {int dummy; } iucv_param ;


 int ENOMEM ;
 int EPERM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 unsigned long IUCV_QUERY ;
 unsigned long iucv_max_pathid ;
 int kfree (void*) ;
 void* kzalloc (int,int) ;

__attribute__((used)) static int iucv_query_maxconn(void)
{
 register unsigned long reg0 asm ("0");
 register unsigned long reg1 asm ("1");
 void *param;
 int ccode;

 param = kzalloc(sizeof(union iucv_param), GFP_KERNEL|GFP_DMA);
 if (!param)
  return -ENOMEM;
 reg0 = IUCV_QUERY;
 reg1 = (unsigned long) param;
 asm volatile (
  "	.long	0xb2f01000\n"
  "	ipm	%0\n"
  "	srl	%0,28\n"
  : "=d" (ccode), "+d" (reg0), "+d" (reg1) : : "cc");
 if (ccode == 0)
  iucv_max_pathid = reg1;
 kfree(param);
 return ccode ? -EPERM : 0;
}
