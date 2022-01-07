
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ protocol; } ;
struct smb_sb_info {TYPE_1__ opt; } ;
struct qstr {int dummy; } ;
struct dentry {int dummy; } ;


 scalar_t__ SMB_PROTOCOL_COREPLUS ;
 int smb_build_path (struct smb_sb_info*,char*,int,struct dentry*,struct qstr*) ;
 int str_upper (char*,int) ;

__attribute__((used)) static int smb_encode_path(struct smb_sb_info *server, char *buf, int maxlen,
      struct dentry *dir, struct qstr *name)
{
 int result;

 result = smb_build_path(server, buf, maxlen, dir, name);
 if (result < 0)
  goto out;
 if (server->opt.protocol <= SMB_PROTOCOL_COREPLUS)
  str_upper(buf, result);
out:
 return result;
}
