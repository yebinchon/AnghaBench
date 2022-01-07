
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_dest {int d_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_del (int *) ;
 int list_empty (int *) ;

__attribute__((used)) static int ip_vs_rs_unhash(struct ip_vs_dest *dest)
{



 if (!list_empty(&dest->d_list)) {
  list_del(&dest->d_list);
  INIT_LIST_HEAD(&dest->d_list);
 }

 return 1;
}
