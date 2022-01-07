
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_fid {int dummy; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct p9_fid*) ;
 struct p9_fid* p9_client_walk (struct p9_fid*,int ,int *,int) ;
 struct p9_fid* v9fs_fid_lookup (struct dentry*) ;

struct p9_fid *v9fs_fid_clone(struct dentry *dentry)
{
 struct p9_fid *fid, *ret;

 fid = v9fs_fid_lookup(dentry);
 if (IS_ERR(fid))
  return fid;

 ret = p9_client_walk(fid, 0, ((void*)0), 1);
 return ret;
}
