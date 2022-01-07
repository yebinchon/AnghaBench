
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * node; } ;
struct watch_adapter {int * token; TYPE_1__ watch; } ;


 int GFP_KERNEL ;
 int free_watch_adapter (struct watch_adapter*) ;
 void* kstrdup (char const*,int ) ;
 struct watch_adapter* kzalloc (int,int ) ;

__attribute__((used)) static struct watch_adapter *alloc_watch_adapter(const char *path,
       const char *token)
{
 struct watch_adapter *watch;

 watch = kzalloc(sizeof(*watch), GFP_KERNEL);
 if (watch == ((void*)0))
  goto out_fail;

 watch->watch.node = kstrdup(path, GFP_KERNEL);
 if (watch->watch.node == ((void*)0))
  goto out_free;

 watch->token = kstrdup(token, GFP_KERNEL);
 if (watch->token == ((void*)0))
  goto out_free;

 return watch;

out_free:
 free_watch_adapter(watch);

out_fail:
 return ((void*)0);
}
