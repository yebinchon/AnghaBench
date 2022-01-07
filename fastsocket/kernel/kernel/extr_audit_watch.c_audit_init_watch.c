
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_watch {char* path; unsigned long ino; scalar_t__ dev; int count; int rules; } ;
typedef scalar_t__ dev_t ;


 int ENOMEM ;
 struct audit_watch* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 struct audit_watch* kzalloc (int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct audit_watch *audit_init_watch(char *path)
{
 struct audit_watch *watch;

 watch = kzalloc(sizeof(*watch), GFP_KERNEL);
 if (unlikely(!watch))
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&watch->rules);
 atomic_set(&watch->count, 1);
 watch->path = path;
 watch->dev = (dev_t)-1;
 watch->ino = (unsigned long)-1;

 return watch;
}
