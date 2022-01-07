
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ doprompt ;
 int pgetc () ;
 int pgetc_macro () ;
 int plinno ;
 int pungetc () ;
 int pushstring (char*,int,int *) ;
 int setprompt (int) ;

__attribute__((used)) static int
pgetc_linecont(void)
{
 int c;

 while ((c = pgetc_macro()) == '\\') {
  c = pgetc();
  if (c == '\n') {
   plinno++;
   if (doprompt)
    setprompt(2);
   else
    setprompt(0);
  } else {
   pungetc();

   pushstring("\\", 1, ((void*)0));
   return (pgetc());
  }
 }
 return (c);
}
