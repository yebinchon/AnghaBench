
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int mutex; } ;


 int WIMAX_ST_DOWN ;
 int __WIMAX_ST_QUIESCING ;
 int __wimax_state_change (struct wimax_dev*,int ) ;
 int d_fnend (int,int *,char*,struct wimax_dev*) ;
 int d_fnstart (int,int *,char*,struct wimax_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wimax_debugfs_rm (struct wimax_dev*) ;
 int wimax_id_table_rm (struct wimax_dev*) ;
 int wimax_rfkill_rm (struct wimax_dev*) ;

void wimax_dev_rm(struct wimax_dev *wimax_dev)
{
 d_fnstart(3, ((void*)0), "(wimax_dev %p)\n", wimax_dev);

 mutex_lock(&wimax_dev->mutex);
 __wimax_state_change(wimax_dev, __WIMAX_ST_QUIESCING);
 wimax_debugfs_rm(wimax_dev);
 wimax_id_table_rm(wimax_dev);
 __wimax_state_change(wimax_dev, WIMAX_ST_DOWN);
 mutex_unlock(&wimax_dev->mutex);
 wimax_rfkill_rm(wimax_dev);
 d_fnend(3, ((void*)0), "(wimax_dev %p) = void\n", wimax_dev);
}
