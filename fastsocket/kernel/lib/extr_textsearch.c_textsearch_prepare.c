
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts_ops {int owner; struct ts_config* (* init ) (void const*,unsigned int,int ,int) ;} ;
struct ts_config {struct ts_ops* ops; } ;
typedef int gfp_t ;


 int EINVAL ;
 int ENOENT ;
 struct ts_config* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct ts_config*) ;
 int PTR_ERR (struct ts_config*) ;
 int TS_AUTOLOAD ;
 struct ts_ops* lookup_ts_algo (char const*) ;
 int module_put (int ) ;
 int request_module (char*,char const*) ;
 struct ts_config* stub1 (void const*,unsigned int,int ,int) ;

struct ts_config *textsearch_prepare(const char *algo, const void *pattern,
         unsigned int len, gfp_t gfp_mask, int flags)
{
 int err = -ENOENT;
 struct ts_config *conf;
 struct ts_ops *ops;

 if (len == 0)
  return ERR_PTR(-EINVAL);

 ops = lookup_ts_algo(algo);
 if (ops == ((void*)0))
  goto errout;

 conf = ops->init(pattern, len, gfp_mask, flags);
 if (IS_ERR(conf)) {
  err = PTR_ERR(conf);
  goto errout;
 }

 conf->ops = ops;
 return conf;

errout:
 if (ops)
  module_put(ops->owner);

 return ERR_PTR(err);
}
