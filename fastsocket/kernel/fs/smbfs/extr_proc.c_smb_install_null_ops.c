
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_ops {int dummy; } ;


 int install_ops (struct smb_ops*,int *) ;
 int smb_ops_null ;

void smb_install_null_ops(struct smb_ops *ops)
{
 install_ops(ops, &smb_ops_null);
}
