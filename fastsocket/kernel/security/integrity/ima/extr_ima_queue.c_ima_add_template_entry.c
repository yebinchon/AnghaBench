
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct inode {int dummy; } ;
struct TYPE_2__ {int file_name; } ;
struct ima_template_entry {TYPE_1__ template; int digest; } ;


 int AUDIT_INTEGRITY_PCR ;
 int IMA_DIGEST_SIZE ;
 int ima_add_digest_entry (struct ima_template_entry*) ;
 int ima_extend_list_mutex ;
 scalar_t__ ima_lookup_digest_entry (int *) ;
 int ima_pcr_extend (int *) ;
 int integrity_audit_msg (int ,struct inode*,int ,char const*,char const*,int,int) ;
 int memcpy (int *,int ,int) ;
 int memset (int *,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ima_add_template_entry(struct ima_template_entry *entry, int violation,
      const char *op, struct inode *inode)
{
 u8 digest[IMA_DIGEST_SIZE];
 const char *audit_cause = "hash_added";
 int audit_info = 1;
 int result = 0;

 mutex_lock(&ima_extend_list_mutex);
 if (!violation) {
  memcpy(digest, entry->digest, sizeof digest);
  if (ima_lookup_digest_entry(digest)) {
   audit_cause = "hash_exists";
   goto out;
  }
 }

 result = ima_add_digest_entry(entry);
 if (result < 0) {
  audit_cause = "ENOMEM";
  audit_info = 0;
  goto out;
 }

 if (violation)
  memset(digest, 0xff, sizeof digest);

 result = ima_pcr_extend(digest);
 if (result != 0) {
  audit_cause = "TPM error";
  audit_info = 0;
 }
out:
 mutex_unlock(&ima_extend_list_mutex);
 integrity_audit_msg(AUDIT_INTEGRITY_PCR, inode,
       entry->template.file_name,
       op, audit_cause, result, audit_info);
 return result;
}
