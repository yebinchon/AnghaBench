
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partition {int xmid; int ymid; int lo_minimal; int hi_minimal; } ;
typedef int lin ;


 int LIN_MAX ;
 int MAX (int,int) ;
 int MIN (int,int) ;
 int SNAKE_LIMIT ;
 int* bdiag ;
 int* fdiag ;
 scalar_t__ speed_large_files ;
 int too_expensive ;
 int* xvec ;
 int* yvec ;

__attribute__((used)) static void
diag (lin xoff, lin xlim, lin yoff, lin ylim, bool find_minimal,
      struct partition *part)
{
  lin *const fd = fdiag;
  lin *const bd = bdiag;
  lin const *const xv = xvec;
  lin const *const yv = yvec;
  lin const dmin = xoff - ylim;
  lin const dmax = xlim - yoff;
  lin const fmid = xoff - yoff;
  lin const bmid = xlim - ylim;
  lin fmin = fmid, fmax = fmid;
  lin bmin = bmid, bmax = bmid;
  lin c;
  bool odd = (fmid - bmid) & 1;


  fd[fmid] = xoff;
  bd[bmid] = xlim;

  for (c = 1;; ++c)
    {
      lin d;
      bool big_snake = 0;


      fmin > dmin ? fd[--fmin - 1] = -1 : ++fmin;
      fmax < dmax ? fd[++fmax + 1] = -1 : --fmax;
      for (d = fmax; d >= fmin; d -= 2)
 {
   lin x, y, oldx, tlo = fd[d - 1], thi = fd[d + 1];

   if (tlo >= thi)
     x = tlo + 1;
   else
     x = thi;
   oldx = x;
   y = x - d;
   while (x < xlim && y < ylim && xv[x] == yv[y])
     ++x, ++y;
   if (x - oldx > SNAKE_LIMIT)
     big_snake = 1;
   fd[d] = x;
   if (odd && bmin <= d && d <= bmax && bd[d] <= x)
     {
       part->xmid = x;
       part->ymid = y;
       part->lo_minimal = part->hi_minimal = 1;
       return;
     }
 }


      bmin > dmin ? bd[--bmin - 1] = LIN_MAX : ++bmin;
      bmax < dmax ? bd[++bmax + 1] = LIN_MAX : --bmax;
      for (d = bmax; d >= bmin; d -= 2)
 {
   lin x, y, oldx, tlo = bd[d - 1], thi = bd[d + 1];

   if (tlo < thi)
     x = tlo;
   else
     x = thi - 1;
   oldx = x;
   y = x - d;
   while (x > xoff && y > yoff && xv[x - 1] == yv[y - 1])
     --x, --y;
   if (oldx - x > SNAKE_LIMIT)
     big_snake = 1;
   bd[d] = x;
   if (!odd && fmin <= d && d <= fmax && x <= fd[d])
     {
       part->xmid = x;
       part->ymid = y;
       part->lo_minimal = part->hi_minimal = 1;
       return;
     }
 }

      if (find_minimal)
 continue;
      if (200 < c && big_snake && speed_large_files)
 {
   lin best = 0;

   for (d = fmax; d >= fmin; d -= 2)
     {
       lin dd = d - fmid;
       lin x = fd[d];
       lin y = x - d;
       lin v = (x - xoff) * 2 - dd;
       if (v > 12 * (c + (dd < 0 ? -dd : dd)))
  {
    if (v > best
        && xoff + SNAKE_LIMIT <= x && x < xlim
        && yoff + SNAKE_LIMIT <= y && y < ylim)
      {


        int k;

        for (k = 1; xv[x - k] == yv[y - k]; k++)
   if (k == SNAKE_LIMIT)
     {
       best = v;
       part->xmid = x;
       part->ymid = y;
       break;
     }
      }
  }
     }
   if (best > 0)
     {
       part->lo_minimal = 1;
       part->hi_minimal = 0;
       return;
     }

   best = 0;
   for (d = bmax; d >= bmin; d -= 2)
     {
       lin dd = d - bmid;
       lin x = bd[d];
       lin y = x - d;
       lin v = (xlim - x) * 2 + dd;
       if (v > 12 * (c + (dd < 0 ? -dd : dd)))
  {
    if (v > best
        && xoff < x && x <= xlim - SNAKE_LIMIT
        && yoff < y && y <= ylim - SNAKE_LIMIT)
      {


        int k;

        for (k = 0; xv[x + k] == yv[y + k]; k++)
   if (k == SNAKE_LIMIT - 1)
     {
       best = v;
       part->xmid = x;
       part->ymid = y;
       break;
     }
      }
  }
     }
   if (best > 0)
     {
       part->lo_minimal = 0;
       part->hi_minimal = 1;
       return;
     }
 }



      if (c >= too_expensive)
 {
   lin fxybest, fxbest;
   lin bxybest, bxbest;

   fxbest = bxbest = 0;


   fxybest = -1;
   for (d = fmax; d >= fmin; d -= 2)
     {
       lin x = MIN (fd[d], xlim);
       lin y = x - d;
       if (ylim < y)
  x = ylim + d, y = ylim;
       if (fxybest < x + y)
  {
    fxybest = x + y;
    fxbest = x;
  }
     }


   bxybest = LIN_MAX;
   for (d = bmax; d >= bmin; d -= 2)
     {
       lin x = MAX (xoff, bd[d]);
       lin y = x - d;
       if (y < yoff)
  x = yoff + d, y = yoff;
       if (x + y < bxybest)
  {
    bxybest = x + y;
    bxbest = x;
  }
     }


   if ((xlim + ylim) - bxybest < fxybest - (xoff + yoff))
     {
       part->xmid = fxbest;
       part->ymid = fxybest - fxbest;
       part->lo_minimal = 1;
       part->hi_minimal = 0;
     }
   else
     {
       part->xmid = bxbest;
       part->ymid = bxybest - bxbest;
       part->lo_minimal = 0;
       part->hi_minimal = 1;
     }
   return;
 }
    }
}
