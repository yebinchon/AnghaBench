
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sbitmap ;
struct TYPE_3__ {int bytes; int elms; } ;


 int memset (int ,int ,int ) ;

void
sbitmap_zero (sbitmap bmap)
{
  memset (bmap->elms, 0, bmap->bytes);
}
