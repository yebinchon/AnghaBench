
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct css_id {int id; int depth; } ;
struct cgroup_subsys {int id_lock; int idr; int use_id; } ;


 int BUG_ON (int) ;
 int CSS_ID_MAX ;
 int ENOMEM ;
 int ENOSPC ;
 struct css_id* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int idr_get_new_above (int *,struct css_id*,int,int*) ;
 int idr_pre_get (int *,int ) ;
 int idr_remove (int *,int) ;
 int kfree (struct css_id*) ;
 struct css_id* kzalloc (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct css_id *get_new_cssid(struct cgroup_subsys *ss, int depth)
{
 struct css_id *newid;
 int myid, error, size;

 BUG_ON(!ss->use_id);

 size = sizeof(*newid) + sizeof(unsigned short) * (depth + 1);
 newid = kzalloc(size, GFP_KERNEL);
 if (!newid)
  return ERR_PTR(-ENOMEM);

 if (unlikely(!idr_pre_get(&ss->idr, GFP_KERNEL))) {
  error = -ENOMEM;
  goto err_out;
 }
 spin_lock(&ss->id_lock);

 error = idr_get_new_above(&ss->idr, newid, 1, &myid);
 spin_unlock(&ss->id_lock);


 if (error) {
  error = -ENOSPC;
  goto err_out;
 }
 if (myid > CSS_ID_MAX)
  goto remove_idr;

 newid->id = myid;
 newid->depth = depth;
 return newid;
remove_idr:
 error = -ENOSPC;
 spin_lock(&ss->id_lock);
 idr_remove(&ss->idr, myid);
 spin_unlock(&ss->id_lock);
err_out:
 kfree(newid);
 return ERR_PTR(error);

}
