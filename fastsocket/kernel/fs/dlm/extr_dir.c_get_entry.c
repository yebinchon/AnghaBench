
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct dlm_ls {TYPE_1__* ls_dirtbl; } ;
struct dlm_direntry {int master_nodeid; int length; int list; int name; } ;
struct TYPE_2__ {int lock; int list; } ;


 int DLM_RESNAME_MAXLEN ;
 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_NOFS ;
 size_t dir_hash (struct dlm_ls*,char*,int) ;
 int kfree (struct dlm_direntry*) ;
 struct dlm_direntry* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,char*,int) ;
 struct dlm_direntry* search_bucket (struct dlm_ls*,char*,int,size_t) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int get_entry(struct dlm_ls *ls, int nodeid, char *name,
       int namelen, int *r_nodeid)
{
 struct dlm_direntry *de, *tmp;
 uint32_t bucket;

 bucket = dir_hash(ls, name, namelen);

 spin_lock(&ls->ls_dirtbl[bucket].lock);
 de = search_bucket(ls, name, namelen, bucket);
 if (de) {
  *r_nodeid = de->master_nodeid;
  spin_unlock(&ls->ls_dirtbl[bucket].lock);
  if (*r_nodeid == nodeid)
   return -EEXIST;
  return 0;
 }

 spin_unlock(&ls->ls_dirtbl[bucket].lock);

 if (namelen > DLM_RESNAME_MAXLEN)
  return -EINVAL;

 de = kzalloc(sizeof(struct dlm_direntry) + namelen, GFP_NOFS);
 if (!de)
  return -ENOMEM;

 de->master_nodeid = nodeid;
 de->length = namelen;
 memcpy(de->name, name, namelen);

 spin_lock(&ls->ls_dirtbl[bucket].lock);
 tmp = search_bucket(ls, name, namelen, bucket);
 if (tmp) {
  kfree(de);
  de = tmp;
 } else {
  list_add_tail(&de->list, &ls->ls_dirtbl[bucket].list);
 }
 *r_nodeid = de->master_nodeid;
 spin_unlock(&ls->ls_dirtbl[bucket].lock);
 return 0;
}
