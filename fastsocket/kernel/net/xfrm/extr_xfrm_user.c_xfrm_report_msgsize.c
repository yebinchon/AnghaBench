
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_user_report {int dummy; } ;


 size_t NLMSG_ALIGN (int) ;

__attribute__((used)) static inline size_t xfrm_report_msgsize(void)
{
 return NLMSG_ALIGN(sizeof(struct xfrm_user_report));
}
