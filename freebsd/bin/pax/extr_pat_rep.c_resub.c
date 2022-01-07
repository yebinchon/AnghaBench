
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ rm_so; scalar_t__ rm_eo; } ;
typedef TYPE_1__ regmatch_t ;
struct TYPE_6__ {int re_nsub; } ;
typedef TYPE_2__ regex_t ;


 int l_strncpy (char*,char*,int) ;

__attribute__((used)) static int
resub(regex_t *rp, regmatch_t *pm, char *orig, char *src, char *dest,
 char *destend)
{
 char *spt;
 char *dpt;
 char c;
 regmatch_t *pmpt;
 int len;
 int subexcnt;

 spt = src;
 dpt = dest;
 subexcnt = rp->re_nsub;
 while ((dpt < destend) && ((c = *spt++) != '\0')) {




  if (c == '&') {
   pmpt = pm;
  } else if ((c == '\\') && (*spt >= '0') && (*spt <= '9')) {



   if ((len = *spt++ - '0') > subexcnt)
    return(-1);
   pmpt = pm + len;
  } else {



    if ((c == '\\') && ((*spt == '\\') || (*spt == '&')))
     c = *spt++;
    *dpt++ = c;
   continue;
  }




  if ((pmpt->rm_so < 0) || (pmpt->rm_eo < 0) ||
      ((len = pmpt->rm_eo - pmpt->rm_so) <= 0))
   continue;





  if (len > (destend - dpt))
   len = destend - dpt;
  if (l_strncpy(dpt, orig + pmpt->rm_so, len) != len)
   return(-1);
  dpt += len;
 }
 return(dpt - dest);
}
