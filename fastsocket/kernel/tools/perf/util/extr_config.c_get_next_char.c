
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int * config_file ;
 int config_file_eof ;
 int config_linenr ;
 int fgetc (int *) ;
 int ungetc (int,int *) ;

__attribute__((used)) static int get_next_char(void)
{
 int c;
 FILE *f;

 c = '\n';
 if ((f = config_file) != ((void*)0)) {
  c = fgetc(f);
  if (c == '\r') {

   c = fgetc(f);
   if (c != '\n') {
    ungetc(c, f);
    c = '\r';
   }
  }
  if (c == '\n')
   config_linenr++;
  if (c == EOF) {
   config_file_eof = 1;
   c = '\n';
  }
 }
 return c;
}
