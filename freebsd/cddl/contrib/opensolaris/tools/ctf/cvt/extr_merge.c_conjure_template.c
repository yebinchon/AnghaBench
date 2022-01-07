
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t_id; int t_flags; int t_size; int t_type; int * t_name; } ;
typedef TYPE_1__ tdesc_t ;


 TYPE_1__* xcalloc (int) ;
 int * xstrdup (int *) ;

__attribute__((used)) static tdesc_t *
conjure_template(tdesc_t *old, int newselfid)
{
 tdesc_t *new = xcalloc(sizeof (tdesc_t));

 new->t_name = old->t_name ? xstrdup(old->t_name) : ((void*)0);
 new->t_type = old->t_type;
 new->t_size = old->t_size;
 new->t_id = newselfid;
 new->t_flags = old->t_flags;

 return (new);
}
