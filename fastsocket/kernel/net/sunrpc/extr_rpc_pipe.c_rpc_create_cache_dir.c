
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct dentry {int dummy; } ;
struct cache_detail {int dummy; } ;
typedef int mode_t ;


 int rpc_cachedir_populate ;
 struct dentry* rpc_mkdir_populate (struct dentry*,struct qstr*,int ,int *,int ,struct cache_detail*) ;

struct dentry *rpc_create_cache_dir(struct dentry *parent, struct qstr *name,
        mode_t umode, struct cache_detail *cd)
{
 return rpc_mkdir_populate(parent, name, umode, ((void*)0),
   rpc_cachedir_populate, cd);
}
