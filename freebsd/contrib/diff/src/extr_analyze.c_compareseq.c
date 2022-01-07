
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct partition {size_t xmid; size_t ymid; int lo_minimal; int hi_minimal; } ;
typedef size_t lin ;
struct TYPE_2__ {int* changed; size_t* realindexes; } ;


 int diag (size_t,size_t,size_t,size_t,int,struct partition*) ;
 TYPE_1__* files ;
 size_t* xvec ;
 size_t* yvec ;

__attribute__((used)) static void
compareseq (lin xoff, lin xlim, lin yoff, lin ylim, bool find_minimal)
{
  lin const *xv = xvec;
  lin const *yv = yvec;


  while (xoff < xlim && yoff < ylim && xv[xoff] == yv[yoff])
    ++xoff, ++yoff;

  while (xlim > xoff && ylim > yoff && xv[xlim - 1] == yv[ylim - 1])
    --xlim, --ylim;


  if (xoff == xlim)
    while (yoff < ylim)
      files[1].changed[files[1].realindexes[yoff++]] = 1;
  else if (yoff == ylim)
    while (xoff < xlim)
      files[0].changed[files[0].realindexes[xoff++]] = 1;
  else
    {
      struct partition part;


      diag (xoff, xlim, yoff, ylim, find_minimal, &part);


      compareseq (xoff, part.xmid, yoff, part.ymid, part.lo_minimal);
      compareseq (part.xmid, xlim, part.ymid, ylim, part.hi_minimal);
    }
}
