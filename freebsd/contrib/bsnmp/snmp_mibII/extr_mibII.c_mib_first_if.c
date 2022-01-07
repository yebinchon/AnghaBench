
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mibif {int dummy; } ;


 struct mibif* TAILQ_FIRST (int *) ;
 int mibif_list ;

struct mibif *
mib_first_if(void)
{
 return (TAILQ_FIRST(&mibif_list));
}
