
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int voidp ;
typedef int am_node ;


 int ** exported_ap ;
 int exported_ap_size ;
 int memset (char*,int ,int) ;
 scalar_t__ xrealloc (int ,int) ;

__attribute__((used)) static int
exported_ap_realloc_map(int nsize)
{



  if (nsize < 0 || nsize == exported_ap_size)
    return 0;

  exported_ap = (am_node **) xrealloc((voidp) exported_ap, nsize * sizeof(am_node *));

  if (nsize > exported_ap_size)
    memset((char *) (exported_ap + exported_ap_size), 0,
   (nsize - exported_ap_size) * sizeof(am_node *));
  exported_ap_size = nsize;

  return 1;
}
