
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VFP_LDSTMDB ;
 int vfp_sp_ldstm (int ) ;

__attribute__((used)) static void
do_vfp_sp_ldstmdb (void)
{
  vfp_sp_ldstm (VFP_LDSTMDB);
}
