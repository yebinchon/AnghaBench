
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_4__ {int file_name; int digest; } ;
struct ima_template_entry {TYPE_2__ template; } ;
struct ima_iint_cache {int flags; int digest; } ;
struct file {TYPE_1__* f_dentry; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int AUDIT_INTEGRITY_PCR ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IMA_DIGEST_SIZE ;
 int IMA_EVENT_NAME_LEN_MAX ;
 int IMA_MEASURED ;
 int ima_store_template (struct ima_template_entry*,int,struct inode*) ;
 int integrity_audit_msg (int ,struct inode*,unsigned char const*,char const*,char const*,int,int ) ;
 int kfree (struct ima_template_entry*) ;
 struct ima_template_entry* kmalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int strncpy (int ,unsigned char const*,int ) ;

void ima_store_measurement(struct ima_iint_cache *iint, struct file *file,
      const unsigned char *filename)
{
 const char *op = "add_template_measure";
 const char *audit_cause = "ENOMEM";
 int result = -ENOMEM;
 struct inode *inode = file->f_dentry->d_inode;
 struct ima_template_entry *entry;
 int violation = 0;

 entry = kmalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry) {
  integrity_audit_msg(AUDIT_INTEGRITY_PCR, inode, filename,
        op, audit_cause, result, 0);
  return;
 }
 memset(&entry->template, 0, sizeof(entry->template));
 memcpy(entry->template.digest, iint->digest, IMA_DIGEST_SIZE);
 strncpy(entry->template.file_name, filename, IMA_EVENT_NAME_LEN_MAX);

 result = ima_store_template(entry, violation, inode);
 if (!result)
  iint->flags |= IMA_MEASURED;
 else
  kfree(entry);
}
