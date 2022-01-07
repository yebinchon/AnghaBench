
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VFP_LDSTMIA ;
 int vfp_dp_ldstm (int ) ;

__attribute__((used)) static void
do_vfp_dp_ldstmia (void)
{
  vfp_dp_ldstm (VFP_LDSTMIA);
}
