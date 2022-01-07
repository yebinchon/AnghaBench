
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef size_t scsi_index_t ;


 int BUG_ON (int) ;
 size_t SCSI_INDEX_TYPE_MAX ;
 scalar_t__* scsi_mib_index ;
 int scsi_mib_index_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

u32 scsi_get_new_index(scsi_index_t type)
{
 u32 new_index;

 BUG_ON((type < 0) || (type >= SCSI_INDEX_TYPE_MAX));

 spin_lock(&scsi_mib_index_lock);
 new_index = ++scsi_mib_index[type];
 spin_unlock(&scsi_mib_index_lock);

 return new_index;
}
