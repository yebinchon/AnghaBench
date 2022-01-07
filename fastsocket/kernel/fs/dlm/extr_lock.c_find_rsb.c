
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dlm_rsb {int res_hash; int res_bucket; int res_nodeid; int res_hashchain; int res_ref; } ;
struct dlm_ls {int ls_rsbtbl_size; TYPE_1__* ls_rsbtbl; } ;
struct TYPE_2__ {int lock; int list; } ;


 int DLM_RESNAME_MAXLEN ;
 int EBADR ;
 int EINVAL ;
 int ENOMEM ;
 int ENOTBLK ;
 unsigned int R_CREATE ;
 int _search_rsb (struct dlm_ls*,char*,int,int,int ,struct dlm_rsb**) ;
 struct dlm_rsb* create_rsb (struct dlm_ls*,char*,int) ;
 int dlm_dir_nodeid (struct dlm_rsb*) ;
 int dlm_free_rsb (struct dlm_rsb*) ;
 scalar_t__ dlm_no_directory (struct dlm_ls*) ;
 int dlm_our_nodeid () ;
 int jhash (char*,int,int ) ;
 int kref_init (int *) ;
 int list_add (int *,int *) ;
 int search_rsb (struct dlm_ls*,char*,int,int,unsigned int,struct dlm_rsb**) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int find_rsb(struct dlm_ls *ls, char *name, int namelen,
      unsigned int flags, struct dlm_rsb **r_ret)
{
 struct dlm_rsb *r = ((void*)0), *tmp;
 uint32_t hash, bucket;
 int error = -EINVAL;

 if (namelen > DLM_RESNAME_MAXLEN)
  goto out;

 if (dlm_no_directory(ls))
  flags |= R_CREATE;

 error = 0;
 hash = jhash(name, namelen, 0);
 bucket = hash & (ls->ls_rsbtbl_size - 1);

 error = search_rsb(ls, name, namelen, bucket, flags, &r);
 if (!error)
  goto out;

 if (error == -EBADR && !(flags & R_CREATE))
  goto out;


 if (error == -ENOTBLK)
  goto out;

 error = -ENOMEM;
 r = create_rsb(ls, name, namelen);
 if (!r)
  goto out;

 r->res_hash = hash;
 r->res_bucket = bucket;
 r->res_nodeid = -1;
 kref_init(&r->res_ref);


 if (dlm_no_directory(ls)) {
  int nodeid = dlm_dir_nodeid(r);
  if (nodeid == dlm_our_nodeid())
   nodeid = 0;
  r->res_nodeid = nodeid;
 }

 spin_lock(&ls->ls_rsbtbl[bucket].lock);
 error = _search_rsb(ls, name, namelen, bucket, 0, &tmp);
 if (!error) {
  spin_unlock(&ls->ls_rsbtbl[bucket].lock);
  dlm_free_rsb(r);
  r = tmp;
  goto out;
 }
 list_add(&r->res_hashchain, &ls->ls_rsbtbl[bucket].list);
 spin_unlock(&ls->ls_rsbtbl[bucket].lock);
 error = 0;
 out:
 *r_ret = r;
 return error;
}
