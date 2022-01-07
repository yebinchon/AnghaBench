
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int table; } ;
struct common_datum {TYPE_1__ permissions; } ;


 int hashtab_destroy (int ) ;
 int hashtab_map (int ,int ,int *) ;
 int kfree (void*) ;
 int perm_destroy ;

__attribute__((used)) static int common_destroy(void *key, void *datum, void *p)
{
 struct common_datum *comdatum;

 kfree(key);
 comdatum = datum;
 hashtab_map(comdatum->permissions.table, perm_destroy, ((void*)0));
 hashtab_destroy(comdatum->permissions.table);
 kfree(datum);
 return 0;
}
