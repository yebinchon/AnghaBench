
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int name; } ;
struct inode {int dummy; } ;
struct fat_slot_info {int dummy; } ;


 int ENOENT ;
 int fat_search_long (struct inode*,int ,unsigned int,struct fat_slot_info*) ;
 unsigned int vfat_striptail_len (struct qstr*) ;

__attribute__((used)) static int vfat_find(struct inode *dir, struct qstr *qname,
       struct fat_slot_info *sinfo)
{
 unsigned int len = vfat_striptail_len(qname);
 if (len == 0)
  return -ENOENT;
 return fat_search_long(dir, qname->name, len, sinfo);
}
