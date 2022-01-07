
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_fh {TYPE_1__* fh_export; int fh_dentry; } ;
struct TYPE_2__ {int h; } ;


 int cache_get (int *) ;
 int dget (int ) ;
 int fh_put (struct svc_fh*) ;

__attribute__((used)) static inline void
fh_dup2(struct svc_fh *dst, struct svc_fh *src)
{
 fh_put(dst);
 dget(src->fh_dentry);
 if (src->fh_export)
  cache_get(&src->fh_export->h);
 *dst = *src;
}
