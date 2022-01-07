
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dirEntNum; int DosDirNum; } ;
struct ncp_entry_info {int volume; TYPE_1__ i; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int volNumber; int dirEntNum; int DosDirNum; } ;


 TYPE_2__* NCP_FINFO (struct inode*) ;

__attribute__((used)) static void ncp_update_dirent(struct inode *inode, struct ncp_entry_info *nwinfo)
{
 NCP_FINFO(inode)->DosDirNum = nwinfo->i.DosDirNum;
 NCP_FINFO(inode)->dirEntNum = nwinfo->i.dirEntNum;
 NCP_FINFO(inode)->volNumber = nwinfo->volume;
}
