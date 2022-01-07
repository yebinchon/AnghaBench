
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int down_read (int *) ;
 int o2hb_callback_sem ;
 int o2hb_fill_node_map_from_callback (unsigned long*,unsigned int) ;
 int o2hb_live_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_read (int *) ;

void o2hb_fill_node_map(unsigned long *map, unsigned bytes)
{


 down_read(&o2hb_callback_sem);
 spin_lock(&o2hb_live_lock);
 o2hb_fill_node_map_from_callback(map, bytes);
 spin_unlock(&o2hb_live_lock);
 up_read(&o2hb_callback_sem);
}
