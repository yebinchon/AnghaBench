
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_inode; } ;
struct cred {int dummy; } ;
struct cachefiles_cache {struct cred* cache_cred; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int _enter (char*) ;
 int _leave (char*,int) ;
 int abort_creds (struct cred*) ;
 int cachefiles_begin_secure (struct cachefiles_cache*,struct cred const**) ;
 int cachefiles_check_cache_dir (struct cachefiles_cache*,struct dentry*) ;
 int cachefiles_end_secure (struct cachefiles_cache*,struct cred const*) ;
 struct cred* prepare_creds () ;
 int put_cred (struct cred*) ;
 int set_create_files_as (struct cred*,int ) ;

int cachefiles_determine_cache_security(struct cachefiles_cache *cache,
     struct dentry *root,
     const struct cred **_saved_cred)
{
 struct cred *new;
 int ret;

 _enter("");



 new = prepare_creds();
 if (!new)
  return -ENOMEM;

 cachefiles_end_secure(cache, *_saved_cred);



 ret = set_create_files_as(new, root->d_inode);
 if (ret < 0) {
  abort_creds(new);
  cachefiles_begin_secure(cache, _saved_cred);
  _leave(" = %d [cfa]", ret);
  return ret;
 }

 put_cred(cache->cache_cred);
 cache->cache_cred = new;

 cachefiles_begin_secure(cache, _saved_cred);
 ret = cachefiles_check_cache_dir(cache, root);

 if (ret == -EOPNOTSUPP)
  ret = 0;
 _leave(" = %d", ret);
 return ret;
}
