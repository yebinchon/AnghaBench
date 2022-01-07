
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcon_link {int dummy; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; int local_nls; } ;
struct cifs_fattr {int cf_mode; } ;
typedef int ssize_t ;
typedef int __u32 ;
typedef int __le32 ;


 int CIFSSMBQAllEAs (int,struct cifs_tcon*,unsigned char const*,char*,char*,int,int ,int) ;
 int CIFS_MOUNT_MAP_SPECIAL_CHR ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 int PTR_ERR (struct tcon_link*) ;
 int SFBITS_MASK ;
 int cFYI (int,char*,int,...) ;
 int cifs_put_tlink (struct tcon_link*) ;
 struct tcon_link* cifs_sb_tlink (struct cifs_sb_info*) ;
 int le32_to_cpu (int ) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

__attribute__((used)) static int cifs_sfu_mode(struct cifs_fattr *fattr, const unsigned char *path,
    struct cifs_sb_info *cifs_sb, int xid)
{
 return -EOPNOTSUPP;

}
