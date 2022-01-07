
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_read (int *) ;
 int netlabel_mgmt_protocount ;

int netlbl_enabled(void)
{



 return (atomic_read(&netlabel_mgmt_protocount) > 0);
}
