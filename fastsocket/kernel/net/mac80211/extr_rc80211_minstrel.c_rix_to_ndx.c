
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct minstrel_sta_info {TYPE_1__* r; } ;
struct TYPE_2__ {int rix; } ;



__attribute__((used)) static inline int
rix_to_ndx(struct minstrel_sta_info *mi, int rix)
{
 int i = rix;
 for (i = rix; i >= 0; i--)
  if (mi->r[i].rix == rix)
   break;
 return i;
}
