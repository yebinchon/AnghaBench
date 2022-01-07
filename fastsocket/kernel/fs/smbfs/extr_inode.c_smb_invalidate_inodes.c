
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_sb_info {int dummy; } ;


 int SB_of (struct smb_sb_info*) ;
 int VERBOSE (char*) ;
 int invalidate_inodes (int ) ;
 int shrink_dcache_sb (int ) ;

void
smb_invalidate_inodes(struct smb_sb_info *server)
{
 VERBOSE("\n");
 shrink_dcache_sb(SB_of(server));
 invalidate_inodes(SB_of(server));
}
