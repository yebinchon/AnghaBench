
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* (* z_error ) (int) ;} ;


 char const* stub1 (int) ;
 TYPE_1__ zlib ;

const char *
z_strerror(int err)
{
 return (zlib.z_error(err));
}
