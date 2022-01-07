
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sbitmap ;
struct TYPE_4__ {int size; int elms; } ;
typedef int SBITMAP_ELT_TYPE ;


 int memcpy (int ,int ,int) ;

void
sbitmap_copy (sbitmap dst, sbitmap src)
{
  memcpy (dst->elms, src->elms, sizeof (SBITMAP_ELT_TYPE) * dst->size);
}
