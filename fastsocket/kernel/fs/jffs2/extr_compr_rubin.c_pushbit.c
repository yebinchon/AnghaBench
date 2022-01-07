
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pushpull {int ofs; int buflen; int reserve; int* buf; } ;


 int ENOSPC ;

__attribute__((used)) static inline int pushbit(struct pushpull *pp, int bit, int use_reserved)
{
 if (pp->ofs >= pp->buflen - (use_reserved?0:pp->reserve))
  return -ENOSPC;

 if (bit)
  pp->buf[pp->ofs >> 3] |= (1<<(7-(pp->ofs & 7)));
 else
  pp->buf[pp->ofs >> 3] &= ~(1<<(7-(pp->ofs & 7)));

 pp->ofs++;

 return 0;
}
