
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_sb_info {int dummy; } ;
struct autofs_info {int (* free ) (struct autofs_info*) ;int u; struct autofs_sb_info* sbi; int last_used; int mode; scalar_t__ gid; scalar_t__ uid; int count; int expiring; scalar_t__ active_count; int active; scalar_t__ size; int * dentry; scalar_t__ flags; } ;
typedef int mode_t ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ S_ISLNK (int ) ;
 int atomic_set (int *,int ) ;
 int ino_lnkfree (struct autofs_info*) ;
 int jiffies ;
 struct autofs_info* kmalloc (int,int ) ;
 int memset (int *,int ,int) ;
 int stub1 (struct autofs_info*) ;

struct autofs_info *autofs4_init_ino(struct autofs_info *ino,
         struct autofs_sb_info *sbi, mode_t mode)
{
 int reinit = 1;

 if (ino == ((void*)0)) {
  reinit = 0;
  ino = kmalloc(sizeof(*ino), GFP_KERNEL);
 }

 if (ino == ((void*)0))
  return ((void*)0);

 if (!reinit) {
  ino->flags = 0;
  ino->dentry = ((void*)0);
  ino->size = 0;
  INIT_LIST_HEAD(&ino->active);
  ino->active_count = 0;
  INIT_LIST_HEAD(&ino->expiring);
  atomic_set(&ino->count, 0);
 }

 ino->uid = 0;
 ino->gid = 0;
 ino->mode = mode;
 ino->last_used = jiffies;

 ino->sbi = sbi;

 if (reinit && ino->free)
  (ino->free)(ino);

 memset(&ino->u, 0, sizeof(ino->u));

 ino->free = ((void*)0);

 if (S_ISLNK(mode))
  ino->free = ino_lnkfree;

 return ino;
}
