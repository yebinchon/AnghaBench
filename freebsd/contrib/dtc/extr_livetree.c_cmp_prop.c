
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int cmp_prop(const void *ax, const void *bx)
{
 const struct property *a, *b;

 a = *((const struct property * const *)ax);
 b = *((const struct property * const *)bx);

 return strcmp(a->name, b->name);
}
