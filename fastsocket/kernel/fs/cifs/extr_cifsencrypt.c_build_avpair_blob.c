
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ntlmssp2_name {void* length; void* type; } ;
struct nls_table {int dummy; } ;
struct TYPE_3__ {unsigned int len; unsigned char* response; } ;
struct cifs_ses {TYPE_2__* server; int domainName; TYPE_1__ auth_key; } ;
typedef int __le64 ;
typedef int __le16 ;
struct TYPE_4__ {int hostname; } ;


 int CURRENT_TIME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NTLMSSP_AV_DNS_COMPUTER_NAME ;
 int NTLMSSP_AV_DNS_DOMAIN_NAME ;
 int NTLMSSP_AV_NB_COMPUTER_NAME ;
 int NTLMSSP_AV_NB_DOMAIN_NAME ;
 int NTLMSSP_AV_TIMESTAMP ;
 int cERROR (int,char*) ;
 int cifs_UnixTimeToNT (int ) ;
 int cifs_strtoUCS (int *,int ,unsigned int,struct nls_table const*) ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le64 (int ) ;
 int kstrdup (char*,int ) ;
 unsigned char* kzalloc (unsigned int,int ) ;
 int memcpy (unsigned char*,int *,int) ;
 unsigned int strlen (int ) ;

__attribute__((used)) static int
build_avpair_blob(struct cifs_ses *ses, const struct nls_table *nls_cp)
{
 unsigned int dlen;
 unsigned int wlen;
 unsigned int size = 6 * sizeof(struct ntlmssp2_name);
 __le64 curtime;
 char *defdmname = "WORKGROUP";
 unsigned char *blobptr;
 struct ntlmssp2_name *attrptr;

 if (!ses->domainName) {
  ses->domainName = kstrdup(defdmname, GFP_KERNEL);
  if (!ses->domainName)
   return -ENOMEM;
 }

 dlen = strlen(ses->domainName);
 wlen = strlen(ses->server->hostname);







 ses->auth_key.len = size + 2 * (2 * dlen) + 2 * (2 * wlen) + 8;
 ses->auth_key.response = kzalloc(ses->auth_key.len, GFP_KERNEL);
 if (!ses->auth_key.response) {
  ses->auth_key.len = 0;
  cERROR(1, "Challenge target info allocation failure");
  return -ENOMEM;
 }

 blobptr = ses->auth_key.response;
 attrptr = (struct ntlmssp2_name *) blobptr;

 attrptr->type = cpu_to_le16(NTLMSSP_AV_NB_DOMAIN_NAME);
 attrptr->length = cpu_to_le16(2 * dlen);
 blobptr = (unsigned char *)attrptr + sizeof(struct ntlmssp2_name);
 cifs_strtoUCS((__le16 *)blobptr, ses->domainName, dlen, nls_cp);

 blobptr += 2 * dlen;
 attrptr = (struct ntlmssp2_name *) blobptr;

 attrptr->type = cpu_to_le16(NTLMSSP_AV_NB_COMPUTER_NAME);
 attrptr->length = cpu_to_le16(2 * wlen);
 blobptr = (unsigned char *)attrptr + sizeof(struct ntlmssp2_name);
 cifs_strtoUCS((__le16 *)blobptr, ses->server->hostname, wlen, nls_cp);

 blobptr += 2 * wlen;
 attrptr = (struct ntlmssp2_name *) blobptr;

 attrptr->type = cpu_to_le16(NTLMSSP_AV_DNS_DOMAIN_NAME);
 attrptr->length = cpu_to_le16(2 * dlen);
 blobptr = (unsigned char *)attrptr + sizeof(struct ntlmssp2_name);
 cifs_strtoUCS((__le16 *)blobptr, ses->domainName, dlen, nls_cp);

 blobptr += 2 * dlen;
 attrptr = (struct ntlmssp2_name *) blobptr;

 attrptr->type = cpu_to_le16(NTLMSSP_AV_DNS_COMPUTER_NAME);
 attrptr->length = cpu_to_le16(2 * wlen);
 blobptr = (unsigned char *)attrptr + sizeof(struct ntlmssp2_name);
 cifs_strtoUCS((__le16 *)blobptr, ses->server->hostname, wlen, nls_cp);

 blobptr += 2 * wlen;
 attrptr = (struct ntlmssp2_name *) blobptr;

 attrptr->type = cpu_to_le16(NTLMSSP_AV_TIMESTAMP);
 attrptr->length = cpu_to_le16(sizeof(__le64));
 blobptr = (unsigned char *)attrptr + sizeof(struct ntlmssp2_name);
 curtime = cpu_to_le64(cifs_UnixTimeToNT(CURRENT_TIME));
 memcpy(blobptr, &curtime, sizeof(__le64));

 return 0;
}
