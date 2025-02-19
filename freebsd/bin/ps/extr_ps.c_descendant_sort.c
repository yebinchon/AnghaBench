
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int level; char* prefix; } ;
struct TYPE_9__ {TYPE_2__ ki_d; TYPE_1__* ki_p; } ;
struct TYPE_7__ {scalar_t__ ki_pid; scalar_t__ ki_ppid; } ;
typedef TYPE_3__ KINFO ;


 int free (unsigned char*) ;
 void* malloc (int) ;
 int memmove (TYPE_3__*,TYPE_3__*,int) ;
 int memset (unsigned char*,char,int) ;
 int strcpy (char*,char*) ;
 int xo_errx (int,char*) ;

__attribute__((used)) static void
descendant_sort(KINFO *ki, int items)
{
 int dst, lvl, maxlvl, n, ndst, nsrc, siblings, src;
 unsigned char *path;
 KINFO kn;





 src = 0;
 maxlvl = 0;
 while (src < items) {
  if (ki[src].ki_d.level) {
   src++;
   continue;
  }
  for (nsrc = 1; src + nsrc < items; nsrc++)
   if (!ki[src + nsrc].ki_d.level)
    break;

  for (dst = 0; dst < items; dst++) {
   if (ki[dst].ki_p->ki_pid == ki[src].ki_p->ki_pid)
    continue;
   if (ki[dst].ki_p->ki_pid == ki[src].ki_p->ki_ppid)
    break;
  }

  if (dst == items) {
   src += nsrc;
   continue;
  }

  for (ndst = 1; dst + ndst < items; ndst++)
   if (ki[dst + ndst].ki_d.level <= ki[dst].ki_d.level)
    break;

  for (n = src; n < src + nsrc; n++) {
   ki[n].ki_d.level += ki[dst].ki_d.level + 1;
   if (maxlvl < ki[n].ki_d.level)
    maxlvl = ki[n].ki_d.level;
  }

  while (nsrc) {
   if (src < dst) {
    kn = ki[src];
    memmove(ki + src, ki + src + 1,
        (dst - src + ndst - 1) * sizeof *ki);
    ki[dst + ndst - 1] = kn;
    nsrc--;
    dst--;
    ndst++;
   } else if (src != dst + ndst) {
    kn = ki[src];
    memmove(ki + dst + ndst + 1, ki + dst + ndst,
        (src - dst - ndst) * sizeof *ki);
    ki[dst + ndst] = kn;
    ndst++;
    nsrc--;
    src++;
   } else {
    ndst += nsrc;
    src += nsrc;
    nsrc = 0;
   }
  }
 }





 path = malloc((maxlvl + 7) / 8);
 memset(path, '\0', (maxlvl + 7) / 8);
 for (src = 0; src < items; src++) {
  if ((lvl = ki[src].ki_d.level) == 0) {
   ki[src].ki_d.prefix = ((void*)0);
   continue;
  }
  if ((ki[src].ki_d.prefix = malloc(lvl * 2 + 1)) == ((void*)0))
   xo_errx(1, "malloc failed");
  for (n = 0; n < lvl - 2; n++) {
   ki[src].ki_d.prefix[n * 2] =
       path[n / 8] & 1 << (n % 8) ? '|' : ' ';
   ki[src].ki_d.prefix[n * 2 + 1] = ' ';
  }
  if (n == lvl - 2) {

   for (siblings = 0, dst = src + 1; dst < items; dst++) {
    if (ki[dst].ki_d.level > lvl)
     continue;
    if (ki[dst].ki_d.level == lvl)
     siblings = 1;
    break;
   }
   if (siblings)
    path[n / 8] |= 1 << (n % 8);
   else
    path[n / 8] &= ~(1 << (n % 8));
   ki[src].ki_d.prefix[n * 2] = siblings ? '|' : '`';
   ki[src].ki_d.prefix[n * 2 + 1] = '-';
   n++;
  }
  strcpy(ki[src].ki_d.prefix + n * 2, "- ");
 }
 free(path);
}
