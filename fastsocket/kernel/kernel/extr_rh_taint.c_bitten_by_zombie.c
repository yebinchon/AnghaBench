
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TAINT_BIT_BY_ZOMBIE ;
 int WARN_TAINT (int,int ,char*) ;

__attribute__((used)) static int bitten_by_zombie(char *str)
{
 WARN_TAINT(1, TAINT_BIT_BY_ZOMBIE, "... ... ... BRAAAAIIIINNNNSSSSS\n");
 return 1;
}
