
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* pstr; char* chdname; struct TYPE_4__* fow; scalar_t__ flgs; int plen; int * pend; } ;
typedef TYPE_1__ PATTERN ;


 scalar_t__ malloc (int) ;
 TYPE_1__* pathead ;
 TYPE_1__* pattail ;
 int paxwarn (int,char*) ;
 int strlen (char*) ;

int
pat_add(char *str, char *chdnam)
{
 PATTERN *pt;




 if ((str == ((void*)0)) || (*str == '\0')) {
  paxwarn(1, "Empty pattern string");
  return(-1);
 }






 if ((pt = (PATTERN *)malloc(sizeof(PATTERN))) == ((void*)0)) {
  paxwarn(1, "Unable to allocate memory for pattern string");
  return(-1);
 }

 pt->pstr = str;
 pt->pend = ((void*)0);
 pt->plen = strlen(str);
 pt->fow = ((void*)0);
 pt->flgs = 0;
 pt->chdname = chdnam;

 if (pathead == ((void*)0)) {
  pattail = pathead = pt;
  return(0);
 }
 pattail->fow = pt;
 pattail = pt;
 return(0);
}
