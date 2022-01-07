
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct _zone {int * clusters; } ;


 int kfree (struct _zone*) ;
 int tipc_cltr_delete (int ) ;
 size_t tipc_max_clusters ;

void tipc_zone_delete(struct _zone *z_ptr)
{
 u32 c_num;

 if (!z_ptr)
  return;
 for (c_num = 1; c_num <= tipc_max_clusters; c_num++) {
  tipc_cltr_delete(z_ptr->clusters[c_num]);
 }
 kfree(z_ptr);
}
