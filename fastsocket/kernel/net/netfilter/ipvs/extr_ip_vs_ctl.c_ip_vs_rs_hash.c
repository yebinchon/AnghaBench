
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_dest {int d_list; int port; int addr; int af; } ;


 unsigned int ip_vs_rs_hashkey (int ,int *,int ) ;
 int * ip_vs_rtable ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;

__attribute__((used)) static int ip_vs_rs_hash(struct ip_vs_dest *dest)
{
 unsigned hash;

 if (!list_empty(&dest->d_list)) {
  return 0;
 }





 hash = ip_vs_rs_hashkey(dest->af, &dest->addr, dest->port);

 list_add(&dest->d_list, &ip_vs_rtable[hash]);

 return 1;
}
