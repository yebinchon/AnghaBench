
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;
typedef int error_t ;


 int ill_rpc (char*) ;

error_t
do_mach_notify_port_destroyed (mach_port_t notify, mach_port_t name)
{
  return ill_rpc ("do_mach_notify_port_destroyed");
}
