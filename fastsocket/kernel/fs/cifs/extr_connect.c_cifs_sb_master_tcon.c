
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int dummy; } ;


 int cifs_sb_master_tlink (struct cifs_sb_info*) ;
 struct cifs_tcon* tlink_tcon (int ) ;

struct cifs_tcon *
cifs_sb_master_tcon(struct cifs_sb_info *cifs_sb)
{
 return tlink_tcon(cifs_sb_master_tlink(cifs_sb));
}
