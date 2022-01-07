
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * ii_owner; int * ii_name; } ;
typedef TYPE_1__ iidesc_t ;


 int free (int *) ;
 TYPE_1__* iidesc_dup (TYPE_1__*) ;
 int * xstrdup (char const*) ;

iidesc_t *
iidesc_dup_rename(iidesc_t *src, char const *name, char const *owner)
{
 iidesc_t *tgt = iidesc_dup(src);
 free(tgt->ii_name);
 free(tgt->ii_owner);

 tgt->ii_name = name ? xstrdup(name) : ((void*)0);
 tgt->ii_owner = owner ? xstrdup(owner) : ((void*)0);

 return (tgt);
}
