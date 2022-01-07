
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* sc_user_prop; struct TYPE_4__* sc_next; } ;
typedef TYPE_1__ zfs_sort_column_t ;


 int free (TYPE_1__*) ;

void
zfs_free_sort_columns(zfs_sort_column_t *sc)
{
 zfs_sort_column_t *col;

 while (sc != ((void*)0)) {
  col = sc->sc_next;
  free(sc->sc_user_prop);
  free(sc);
  sc = col;
 }
}
