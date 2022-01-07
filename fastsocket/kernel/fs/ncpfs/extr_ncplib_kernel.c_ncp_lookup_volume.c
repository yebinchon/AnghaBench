
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; } ;
struct nw_info_struct {TYPE_1__ nfs; void* lastAccessDate; void* modifyDate; void* creationDate; void* modifyTime; void* creationTime; int attributes; scalar_t__ nameLen; int entryName; int DosDirNum; int dirEntNum; int volNumber; } ;
struct ncp_server {int dummy; } ;


 int aDIR ;
 void* cpu_to_le16 (int) ;
 int memcpy (int ,char const*,scalar_t__) ;
 int memset (struct nw_info_struct*,int ,int) ;
 int ncp_get_volume_root (struct ncp_server*,char const*,int *,int *,int *) ;
 scalar_t__ strlen (char const*) ;

int
ncp_lookup_volume(struct ncp_server *server, const char *volname,
    struct nw_info_struct *target)
{
 int result;

 memset(target, 0, sizeof(*target));
 result = ncp_get_volume_root(server, volname,
   &target->volNumber, &target->dirEntNum, &target->DosDirNum);
 if (result) {
  return result;
 }
 target->nameLen = strlen(volname);
 memcpy(target->entryName, volname, target->nameLen+1);
 target->attributes = aDIR;

 target->creationTime = target->modifyTime = cpu_to_le16(0x0000);
 target->creationDate = target->modifyDate = target->lastAccessDate = cpu_to_le16(0x0C21);
 target->nfs.mode = 0;
 return 0;
}
