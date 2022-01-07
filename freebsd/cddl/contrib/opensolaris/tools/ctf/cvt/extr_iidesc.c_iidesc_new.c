
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ii_name; } ;
typedef TYPE_1__ iidesc_t ;


 TYPE_1__* xcalloc (int) ;
 int xstrdup (char*) ;

iidesc_t *
iidesc_new(char *name)
{
 iidesc_t *ii;

 ii = xcalloc(sizeof (iidesc_t));
 if (name)
  ii->ii_name = xstrdup(name);

 return (ii);
}
