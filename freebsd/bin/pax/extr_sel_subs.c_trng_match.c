
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int st_mtime; int st_ctime; } ;
struct TYPE_8__ {TYPE_1__ sb; } ;
struct TYPE_7__ {int flgs; struct TYPE_7__* fow; int high_time; int low_time; } ;
typedef TYPE_2__ TIME_RNG ;
typedef TYPE_3__ ARCHD ;





 int HASHIGH ;
 int HASLOW ;
 TYPE_2__* trhead ;

__attribute__((used)) static int
trng_match(ARCHD *arcn)
{
 TIME_RNG *pt;





 pt = trhead;
 while (pt != ((void*)0)) {
  switch(pt->flgs & 130) {
  case 130:




   if (((pt->flgs & HASLOW) &&
       (arcn->sb.st_mtime < pt->low_time) &&
       (arcn->sb.st_ctime < pt->low_time)) ||
       ((pt->flgs & HASHIGH) &&
       (arcn->sb.st_mtime > pt->high_time) &&
       (arcn->sb.st_ctime > pt->high_time))) {
    pt = pt->fow;
    continue;
   }
   break;
  case 129:



   if (((pt->flgs & HASLOW) &&
       (arcn->sb.st_ctime < pt->low_time)) ||
       ((pt->flgs & HASHIGH) &&
       (arcn->sb.st_ctime > pt->high_time))) {
    pt = pt->fow;
    continue;
   }
   break;
  case 128:
  default:



   if (((pt->flgs & HASLOW) &&
       (arcn->sb.st_mtime < pt->low_time)) ||
       ((pt->flgs & HASHIGH) &&
       (arcn->sb.st_mtime > pt->high_time))) {
    pt = pt->fow;
    continue;
   }
   break;
  }
  break;
 }

 if (pt == ((void*)0))
  return(1);
 return(0);
}
