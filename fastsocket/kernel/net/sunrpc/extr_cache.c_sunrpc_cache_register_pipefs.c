
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qstr {char const* name; int len; int hash; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {struct dentry* dir; } ;
struct TYPE_4__ {TYPE_1__ pipefs; } ;
struct cache_detail {TYPE_2__ u; } ;
typedef int mode_t ;


 int IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int full_name_hash (char const*,int ) ;
 struct dentry* rpc_create_cache_dir (struct dentry*,struct qstr*,int ,struct cache_detail*) ;
 int strlen (char const*) ;
 int sunrpc_destroy_cache_detail (struct cache_detail*) ;
 int sunrpc_init_cache_detail (struct cache_detail*) ;

int sunrpc_cache_register_pipefs(struct dentry *parent,
     const char *name, mode_t umode,
     struct cache_detail *cd)
{
 struct qstr q;
 struct dentry *dir;
 int ret = 0;

 sunrpc_init_cache_detail(cd);
 q.name = name;
 q.len = strlen(name);
 q.hash = full_name_hash(q.name, q.len);
 dir = rpc_create_cache_dir(parent, &q, umode, cd);
 if (!IS_ERR(dir))
  cd->u.pipefs.dir = dir;
 else {
  sunrpc_destroy_cache_detail(cd);
  ret = PTR_ERR(dir);
 }
 return ret;
}
