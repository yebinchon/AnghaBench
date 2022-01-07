
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int case_handling; } ;
struct smb_sb_info {int local_nls; int remote_nls; TYPE_3__* ops; TYPE_2__ opt; } ;
struct TYPE_5__ {scalar_t__ tv_nsec; int tv_sec; } ;
struct smb_fattr {char attr; TYPE_1__ f_mtime; TYPE_1__ f_atime; TYPE_1__ f_ctime; int f_size; scalar_t__ f_ino; } ;
struct qstr {char* name; int len; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_7__ {int (* convert ) (unsigned char*,int ,char*,int,int ,int ) ;} ;


 int DEBUG1 (char*,int,int,unsigned char*) ;
 int DVAL (char*,int) ;


 int SMB_MAXNAMELEN ;
 int SMB_STATUS_SIZE ;
 int WVAL (char*,int) ;
 int date_dos2unix (struct smb_sb_info*,int ,int ) ;
 TYPE_4__* entry ;
 int smb_finish_dirent (struct smb_sb_info*,struct smb_fattr*) ;
 int smb_init_dirent (struct smb_sb_info*,struct smb_fattr*) ;
 int str_lower (int ,int) ;
 int str_upper (int ,int) ;
 int strnlen (char*,int) ;
 int stub1 (unsigned char*,int ,char*,int,int ,int ) ;

__attribute__((used)) static char *
smb_decode_short_dirent(struct smb_sb_info *server, char *p,
   struct qstr *qname, struct smb_fattr *fattr,
   unsigned char *name_buf)
{
 int len;




 smb_init_dirent(server, fattr);
 fattr->f_ino = 0;

 p += SMB_STATUS_SIZE;
 fattr->attr = *p;
 fattr->f_mtime.tv_sec = date_dos2unix(server, WVAL(p, 3), WVAL(p, 1));
 fattr->f_mtime.tv_nsec = 0;
 fattr->f_size = DVAL(p, 5);
 fattr->f_ctime = fattr->f_mtime;
 fattr->f_atime = fattr->f_mtime;
 qname->name = p + 9;
 len = strnlen(qname->name, 12);




 while (len > 2 && qname->name[len-1] == ' ')
  len--;

 smb_finish_dirent(server, fattr);
 qname->len = 0;
 len = server->ops->convert(name_buf, SMB_MAXNAMELEN,
       qname->name, len,
       server->remote_nls, server->local_nls);
 if (len > 0) {
  qname->len = len;
  qname->name = name_buf;
  DEBUG1("len=%d, name=%.*s\n",qname->len,qname->len,qname->name);
 }

 return p + 22;
}
