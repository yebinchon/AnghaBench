
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ima_template_entry {int template_len; int template_name; int digest; int template; } ;


 int AUDIT_INTEGRITY_PCR ;
 int IMA_TEMPLATE_NAME ;
 int ima_add_template_entry (struct ima_template_entry*,int,char const*,struct inode*) ;
 int ima_calc_template_hash (int,int *,int ) ;
 int integrity_audit_msg (int ,struct inode*,int ,char const*,char const*,int,int ) ;
 int memset (int ,int ,int) ;

int ima_store_template(struct ima_template_entry *entry,
         int violation, struct inode *inode)
{
 const char *op = "add_template_measure";
 const char *audit_cause = "hashing_error";
 int result;

 memset(entry->digest, 0, sizeof(entry->digest));
 entry->template_name = IMA_TEMPLATE_NAME;
 entry->template_len = sizeof(entry->template);

 if (!violation) {
  result = ima_calc_template_hash(entry->template_len,
      &entry->template,
      entry->digest);
  if (result < 0) {
   integrity_audit_msg(AUDIT_INTEGRITY_PCR, inode,
         entry->template_name, op,
         audit_cause, result, 0);
   return result;
  }
 }
 result = ima_add_template_entry(entry, violation, op, inode);
 return result;
}
