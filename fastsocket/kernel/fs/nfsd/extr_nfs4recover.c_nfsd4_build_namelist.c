
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct name_list {char* name; int list; } ;
struct list_head {int dummy; } ;
typedef int loff_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HEXDIR_LEN ;
 struct name_list* kmalloc (int,int ) ;
 int list_add (int *,struct list_head*) ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static int
nfsd4_build_namelist(void *arg, const char *name, int namlen,
  loff_t offset, u64 ino, unsigned int d_type)
{
 struct list_head *names = arg;
 struct name_list *entry;

 if (namlen != HEXDIR_LEN - 1)
  return 0;
 entry = kmalloc(sizeof(struct name_list), GFP_KERNEL);
 if (entry == ((void*)0))
  return -ENOMEM;
 memcpy(entry->name, name, HEXDIR_LEN - 1);
 entry->name[HEXDIR_LEN - 1] = '\0';
 list_add(&entry->list, names);
 return 0;
}
