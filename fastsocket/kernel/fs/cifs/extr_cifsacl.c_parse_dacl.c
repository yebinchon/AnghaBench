
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct cifs_sid {int dummy; } ;
struct cifs_fattr {int cf_mode; } ;
struct cifs_acl {int num_aces; int size; int revision; } ;
struct cifs_ace {int size; int type; int access_req; int sid; } ;


 int DBG2 ;
 int GFP_KERNEL ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 int S_IRWXUGO ;
 int ULONG_MAX ;
 int access_flags_to_mode (int ,int ,int *,int*) ;
 int cERROR (int,char*) ;
 int cFYI (int ,char*,int,int,int) ;
 scalar_t__ compare_sids (int *,struct cifs_sid*) ;
 int dump_ace (struct cifs_ace*,char*) ;
 int kfree (struct cifs_ace**) ;
 struct cifs_ace** kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 struct cifs_sid sid_authusers ;
 struct cifs_sid sid_everyone ;

__attribute__((used)) static void parse_dacl(struct cifs_acl *pdacl, char *end_of_acl,
         struct cifs_sid *pownersid, struct cifs_sid *pgrpsid,
         struct cifs_fattr *fattr)
{
 int i;
 int num_aces = 0;
 int acl_size;
 char *acl_base;
 struct cifs_ace **ppace;



 if (!pdacl) {


  fattr->cf_mode |= S_IRWXUGO;
  return;
 }


 if (end_of_acl < (char *)pdacl + le16_to_cpu(pdacl->size)) {
  cERROR(1, "ACL too small to parse DACL");
  return;
 }

 cFYI(DBG2, "DACL revision %d size %d num aces %d",
  le16_to_cpu(pdacl->revision), le16_to_cpu(pdacl->size),
  le32_to_cpu(pdacl->num_aces));




 fattr->cf_mode &= ~(S_IRWXUGO);

 acl_base = (char *)pdacl;
 acl_size = sizeof(struct cifs_acl);

 num_aces = le32_to_cpu(pdacl->num_aces);
 if (num_aces > 0) {
  umode_t user_mask = S_IRWXU;
  umode_t group_mask = S_IRWXG;
  umode_t other_mask = S_IRWXU | S_IRWXG | S_IRWXO;

  if (num_aces > ULONG_MAX / sizeof(struct cifs_ace *))
   return;
  ppace = kmalloc(num_aces * sizeof(struct cifs_ace *),
    GFP_KERNEL);
  if (!ppace) {
   cERROR(1, "DACL memory allocation error");
   return;
  }

  for (i = 0; i < num_aces; ++i) {
   ppace[i] = (struct cifs_ace *) (acl_base + acl_size);



   if (compare_sids(&(ppace[i]->sid), pownersid) == 0)
    access_flags_to_mode(ppace[i]->access_req,
           ppace[i]->type,
           &fattr->cf_mode,
           &user_mask);
   if (compare_sids(&(ppace[i]->sid), pgrpsid) == 0)
    access_flags_to_mode(ppace[i]->access_req,
           ppace[i]->type,
           &fattr->cf_mode,
           &group_mask);
   if (compare_sids(&(ppace[i]->sid), &sid_everyone) == 0)
    access_flags_to_mode(ppace[i]->access_req,
           ppace[i]->type,
           &fattr->cf_mode,
           &other_mask);
   if (compare_sids(&(ppace[i]->sid), &sid_authusers) == 0)
    access_flags_to_mode(ppace[i]->access_req,
           ppace[i]->type,
           &fattr->cf_mode,
           &other_mask);






   acl_base = (char *)ppace[i];
   acl_size = le16_to_cpu(ppace[i]->size);
  }

  kfree(ppace);
 }

 return;
}
