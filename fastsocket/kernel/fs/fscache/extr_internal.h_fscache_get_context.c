
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fscache_cookie {int netfs_data; TYPE_1__* def; } ;
struct TYPE_2__ {int (* get_context ) (int ,void*) ;} ;


 int stub1 (int ,void*) ;

__attribute__((used)) static inline
void *fscache_get_context(struct fscache_cookie *cookie, void *context)
{
 if (cookie->def->get_context)
  cookie->def->get_context(cookie->netfs_data, context);
 return context;
}
