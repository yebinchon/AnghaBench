
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace_engine_ops {int release; } ;
struct utrace_engine {int release; void* data; struct utrace_engine_ops const* ops; scalar_t__ flags; int kref; } ;
struct utrace {int lock; } ;
struct task_struct {int flags; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int EPERM ;
 struct utrace_engine* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int PF_KTHREAD ;
 int UTRACE_ATTACH_CREATE ;
 struct utrace_engine* find_matching_engine (struct utrace*,int,struct utrace_engine_ops const*,void*) ;
 struct utrace_engine* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct utrace_engine*) ;
 int kref_set (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct utrace* task_utrace_struct (struct task_struct*) ;
 scalar_t__ unlikely (int) ;
 int utrace_add_engine (struct task_struct*,struct utrace*,struct utrace_engine*,int,struct utrace_engine_ops const*,void*) ;
 struct utrace_engine_ops const utrace_detached_ops ;
 int utrace_engine_cachep ;
 int utrace_engine_get (struct utrace_engine*) ;
 int utrace_task_alloc (struct task_struct*) ;

struct utrace_engine *utrace_attach_task(
 struct task_struct *target, int flags,
 const struct utrace_engine_ops *ops, void *data)
{
 struct utrace *utrace = task_utrace_struct(target);
 struct utrace_engine *engine;
 int ret;

 if (!(flags & UTRACE_ATTACH_CREATE)) {
  if (unlikely(!utrace))
   return ERR_PTR(-ENOENT);
  spin_lock(&utrace->lock);
  engine = find_matching_engine(utrace, flags, ops, data);
  if (engine)
   utrace_engine_get(engine);
  spin_unlock(&utrace->lock);
  return engine ?: ERR_PTR(-ENOENT);
 }

 if (unlikely(!ops) || unlikely(ops == &utrace_detached_ops))
  return ERR_PTR(-EINVAL);

 if (unlikely(target->flags & PF_KTHREAD))



  return ERR_PTR(-EPERM);

 if (!utrace) {
  if (unlikely(!utrace_task_alloc(target)))
   return ERR_PTR(-ENOMEM);
  utrace = task_utrace_struct(target);
 }

 engine = kmem_cache_alloc(utrace_engine_cachep, GFP_KERNEL);
 if (unlikely(!engine))
  return ERR_PTR(-ENOMEM);





 kref_set(&engine->kref, 2);
 engine->flags = 0;
 engine->ops = ops;
 engine->data = data;
 engine->release = ops->release;

 ret = utrace_add_engine(target, utrace, engine, flags, ops, data);

 if (unlikely(ret)) {
  kmem_cache_free(utrace_engine_cachep, engine);
  engine = ERR_PTR(ret);
 }

 return engine;
}
