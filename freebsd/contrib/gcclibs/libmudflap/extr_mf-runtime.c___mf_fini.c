
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mudflap_mode; } ;


 int TRACE (char*) ;
 TYPE_1__ __mf_opts ;
 int __mfu_report () ;
 int mode_nop ;

void __mf_fini ()
{
  TRACE ("__mf_fini\n");
  __mfu_report ();




  __mf_opts.mudflap_mode = mode_nop;

}
