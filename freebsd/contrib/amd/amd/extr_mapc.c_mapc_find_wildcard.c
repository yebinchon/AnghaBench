
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * wildcard; } ;
typedef TYPE_1__ mnt_map ;


 int search_map (TYPE_1__*,int ,int **) ;
 int wildcard ;

__attribute__((used)) static void
mapc_find_wildcard(mnt_map *m)
{



  int rc = search_map(m, wildcard, &m->wildcard);

  if (rc != 0)
    m->wildcard = ((void*)0);
}
