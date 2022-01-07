
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t am_mapno; } ;
typedef TYPE_1__ am_node ;


 int XFREE (TYPE_1__*) ;
 int ** exported_ap ;
 size_t first_free_map ;
 size_t last_used_map ;
 int memset (char*,int ,int) ;

__attribute__((used)) static void
exported_ap_free(am_node *mp)
{



  if (!mp)
    return;




  exported_ap[mp->am_mapno] = ((void*)0);




  if (mp->am_mapno == last_used_map)
    while (last_used_map >= 0 && exported_ap[last_used_map] == 0)
      --last_used_map;

  if (first_free_map > mp->am_mapno)
    first_free_map = mp->am_mapno;




  memset((char *) mp, 0, sizeof(am_node));
  XFREE(mp);
}
