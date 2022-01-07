
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HistEvent ;


 int H_SETSIZE ;
 int H_SETUNIQUE ;
 int atoi (char const*) ;
 int * hist ;
 int history (int *,int *,int ,int) ;
 int is_number (char const*) ;

void
sethistsize(const char *hs)
{
 int histsize;
 HistEvent he;

 if (hist != ((void*)0)) {
  if (hs == ((void*)0) || !is_number(hs))
   histsize = 100;
  else
   histsize = atoi(hs);
  history(hist, &he, H_SETSIZE, histsize);
  history(hist, &he, H_SETUNIQUE, 1);
 }
}
