
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;
typedef int error_t ;


 int ill_rpc (char*) ;

error_t
S_msg_sig_post_reply (mach_port_t reply, error_t err)
{
  return ill_rpc ("S_msg_sig_post_reply");
}
