
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* argv0 ;
 int ffs (unsigned int) ;
 int* flgch ;
 int fprintf (int ,char*,...) ;
 int putc (char,int ) ;
 int stderr ;

__attribute__((used)) static void
printflg(unsigned int flg)
{
 int nxt;
 int pos = 0;

 (void)fprintf(stderr,"%s: Invalid combination of options:", argv0);
 while ((nxt = ffs(flg)) != 0) {
  flg = flg >> nxt;
  pos += nxt;
  (void)fprintf(stderr, " -%c", flgch[pos-1]);
 }
 (void)putc('\n', stderr);
}
