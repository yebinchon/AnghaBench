
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qnx4_inode_entry {int di_status; char* di_fname; } ;
struct buffer_head {scalar_t__ b_data; } ;


 scalar_t__ QNX4_DIR_ENTRY_SIZE ;
 int QNX4_FILE_LINK ;
 int QNX4_FILE_USED ;
 int QNX4_NAME_MAX ;
 int QNX4_SHORT_NAME_MAX ;
 int printk (char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int qnx4_match(int len, const char *name,
        struct buffer_head *bh, unsigned long *offset)
{
 struct qnx4_inode_entry *de;
 int namelen, thislen;

 if (bh == ((void*)0)) {
  printk("qnx4: matching unassigned buffer !\n");
  return 0;
 }
 de = (struct qnx4_inode_entry *) (bh->b_data + *offset);
 *offset += QNX4_DIR_ENTRY_SIZE;
 if ((de->di_status & QNX4_FILE_LINK) != 0) {
  namelen = QNX4_NAME_MAX;
 } else {
  namelen = QNX4_SHORT_NAME_MAX;
 }

 if (!len && (de->di_fname[0] == '.') && (de->di_fname[1] == '\0')) {
  return 1;
 }
 thislen = strlen( de->di_fname );
 if ( thislen > namelen )
  thislen = namelen;
 if (len != thislen) {
  return 0;
 }
 if (strncmp(name, de->di_fname, len) == 0) {
  if ((de->di_status & (QNX4_FILE_USED|QNX4_FILE_LINK)) != 0) {
   return 1;
  }
 }
 return 0;
}
