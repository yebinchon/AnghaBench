
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct cifs_sid {int dummy; } ;
struct cifs_acl {int num_aces; int size; } ;
struct cifs_ace {int dummy; } ;
typedef int __u64 ;


 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int fill_ace_for_sid (struct cifs_ace*,struct cifs_sid*,int ,int ) ;
 struct cifs_sid sid_everyone ;

__attribute__((used)) static int set_chmod_dacl(struct cifs_acl *pndacl, struct cifs_sid *pownersid,
   struct cifs_sid *pgrpsid, __u64 nmode)
{
 u16 size = 0;
 struct cifs_acl *pnndacl;

 pnndacl = (struct cifs_acl *)((char *)pndacl + sizeof(struct cifs_acl));

 size += fill_ace_for_sid((struct cifs_ace *) ((char *)pnndacl + size),
     pownersid, nmode, S_IRWXU);
 size += fill_ace_for_sid((struct cifs_ace *)((char *)pnndacl + size),
     pgrpsid, nmode, S_IRWXG);
 size += fill_ace_for_sid((struct cifs_ace *)((char *)pnndacl + size),
      &sid_everyone, nmode, S_IRWXO);

 pndacl->size = cpu_to_le16(size + sizeof(struct cifs_acl));
 pndacl->num_aces = cpu_to_le32(3);

 return 0;
}
