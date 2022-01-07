
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vacm_context {int dummy; } ;


 struct vacm_context* SLIST_FIRST (int *) ;
 int vacm_contextlist ;

struct vacm_context *
vacm_first_context(void)
{
 return (SLIST_FIRST(&vacm_contextlist));
}
