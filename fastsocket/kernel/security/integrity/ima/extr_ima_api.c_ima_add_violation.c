
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_3__ {int file_name; } ;
struct ima_template_entry {TYPE_1__ template; } ;
struct TYPE_4__ {int violations; } ;


 int AUDIT_INTEGRITY_PCR ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IMA_EVENT_NAME_LEN_MAX ;
 int atomic_long_inc (int *) ;
 TYPE_2__ ima_htable ;
 int ima_store_template (struct ima_template_entry*,int,struct inode*) ;
 int integrity_audit_msg (int ,struct inode*,unsigned char const*,char const*,char const*,int,int ) ;
 int kfree (struct ima_template_entry*) ;
 struct ima_template_entry* kmalloc (int,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int strncpy (int ,unsigned char const*,int ) ;

void ima_add_violation(struct inode *inode, const unsigned char *filename,
         const char *op, const char *cause)
{
 struct ima_template_entry *entry;
 int violation = 1;
 int result;


 atomic_long_inc(&ima_htable.violations);

 entry = kmalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry) {
  result = -ENOMEM;
  goto err_out;
 }
 memset(&entry->template, 0, sizeof(entry->template));
 strncpy(entry->template.file_name, filename, IMA_EVENT_NAME_LEN_MAX);
 result = ima_store_template(entry, violation, inode);
 if (result < 0)
  kfree(entry);
err_out:
 integrity_audit_msg(AUDIT_INTEGRITY_PCR, inode, filename,
       op, cause, result, 0);
}
