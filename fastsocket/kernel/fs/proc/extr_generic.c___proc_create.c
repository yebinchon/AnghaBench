
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {char* name; int namelen; int pde_openers; int * pde_unload_completion; int pde_unload_lock; scalar_t__ pde_users; int count; int nlink; int mode; } ;
typedef int nlink_t ;
typedef int mode_t ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 struct proc_dir_entry* kmalloc (int,int ) ;
 int memcpy (char*,char const*,int) ;
 int memset (struct proc_dir_entry*,int ,int) ;
 int spin_lock_init (int *) ;
 scalar_t__ strchr (char const*,char) ;
 int strlen (char const*) ;
 scalar_t__ xlate_proc_name (char const*,struct proc_dir_entry**,char const**) ;

__attribute__((used)) static struct proc_dir_entry *__proc_create(struct proc_dir_entry **parent,
       const char *name,
       mode_t mode,
       nlink_t nlink)
{
 struct proc_dir_entry *ent = ((void*)0);
 const char *fn = name;
 int len;


 if (!name || !strlen(name)) goto out;

 if (xlate_proc_name(name, parent, &fn) != 0)
  goto out;


 if (strchr(fn, '/'))
  goto out;

 len = strlen(fn);

 ent = kmalloc(sizeof(struct proc_dir_entry) + len + 1, GFP_KERNEL);
 if (!ent) goto out;

 memset(ent, 0, sizeof(struct proc_dir_entry));
 memcpy(((char *) ent) + sizeof(struct proc_dir_entry), fn, len + 1);
 ent->name = ((char *) ent) + sizeof(*ent);
 ent->namelen = len;
 ent->mode = mode;
 ent->nlink = nlink;
 atomic_set(&ent->count, 1);
 ent->pde_users = 0;
 spin_lock_init(&ent->pde_unload_lock);
 ent->pde_unload_completion = ((void*)0);
 INIT_LIST_HEAD(&ent->pde_openers);
 out:
 return ent;
}
