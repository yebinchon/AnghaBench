
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;


 int B_TRUE ;
 int zpool_export_common (int *,int ,int ,char const*) ;

int
zpool_export_force(zpool_handle_t *zhp, const char *log_str)
{
 return (zpool_export_common(zhp, B_TRUE, B_TRUE, log_str));
}
