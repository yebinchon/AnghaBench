
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meta_value {scalar_t__ val; } ;


 int kfree (void*) ;

__attribute__((used)) static void meta_var_destroy(struct meta_value *v)
{
 kfree((void *) v->val);
}
