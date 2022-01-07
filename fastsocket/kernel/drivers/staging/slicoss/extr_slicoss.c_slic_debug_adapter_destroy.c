
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int * debugfs_entry; } ;


 int debugfs_remove (int *) ;

__attribute__((used)) static void slic_debug_adapter_destroy(struct adapter *adapter)
{
 if (adapter->debugfs_entry) {
  debugfs_remove(adapter->debugfs_entry);
  adapter->debugfs_entry = ((void*)0);
 }
}
