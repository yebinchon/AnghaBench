
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ CLUSTER_IDS ;
 scalar_t__ find_first_zero_bit (int ,scalar_t__) ;
 int set_bit (scalar_t__,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wusb_cluster_id_table ;
 int wusb_cluster_ids_lock ;

u8 wusb_cluster_id_get(void)
{
 u8 id;
 spin_lock(&wusb_cluster_ids_lock);
 id = find_first_zero_bit(wusb_cluster_id_table, CLUSTER_IDS);
 if (id > CLUSTER_IDS) {
  id = 0;
  goto out;
 }
 set_bit(id, wusb_cluster_id_table);
 id = (u8) 0xff - id;
out:
 spin_unlock(&wusb_cluster_ids_lock);
 return id;

}
