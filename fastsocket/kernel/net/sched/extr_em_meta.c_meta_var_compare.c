
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meta_obj {int len; scalar_t__ value; } ;


 int memcmp (void*,void*,int) ;

__attribute__((used)) static int meta_var_compare(struct meta_obj *a, struct meta_obj *b)
{
 int r = a->len - b->len;

 if (r == 0)
  r = memcmp((void *) a->value, (void *) b->value, a->len);

 return r;
}
