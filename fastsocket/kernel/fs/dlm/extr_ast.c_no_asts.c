
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ast_queue ;
 int ast_queue_lock ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline int no_asts(void)
{
 int ret;

 spin_lock(&ast_queue_lock);
 ret = list_empty(&ast_queue);
 spin_unlock(&ast_queue_lock);
 return ret;
}
