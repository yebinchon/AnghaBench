
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_ops {int dummy; } ;


 int SMB_OPS_NUM_STATIC ;
 int memcpy (struct smb_ops*,struct smb_ops*,int) ;

__attribute__((used)) static void
install_ops(struct smb_ops *dst, struct smb_ops *src)
{
 memcpy(dst, src, sizeof(void *) * SMB_OPS_NUM_STATIC);
}
