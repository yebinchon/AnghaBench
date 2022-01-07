
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INIT_LIST_HEAD (int *) ;
 int IPPROTO_MAX ;
 int * rps_table ;

__attribute__((used)) static void init_rps_framework(void)
{
 int i;

 for (i = 0; i < IPPROTO_MAX; i++)
  INIT_LIST_HEAD(&rps_table[i]);
}
