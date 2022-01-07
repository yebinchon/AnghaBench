
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meta_type_ops {int (* destroy ) (int *) ;} ;
struct meta_match {int rvalue; int lvalue; } ;


 int kfree (struct meta_match*) ;
 struct meta_type_ops* meta_type_ops (int *) ;
 int stub1 (int *) ;
 int stub2 (int *) ;

__attribute__((used)) static void meta_delete(struct meta_match *meta)
{
 if (meta) {
  struct meta_type_ops *ops = meta_type_ops(&meta->lvalue);

  if (ops && ops->destroy) {
   ops->destroy(&meta->lvalue);
   ops->destroy(&meta->rvalue);
  }
 }

 kfree(meta);
}
