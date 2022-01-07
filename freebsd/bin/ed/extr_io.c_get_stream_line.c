
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int ERR ;
 int REALLOC (char*,int ,int,int) ;
 char* errmsg ;
 int errno ;
 int feof (int *) ;
 scalar_t__ ferror (int *) ;
 int fprintf (int ,char*,char*) ;
 int getc (int *) ;
 int isbinary ;
 int newline_added ;
 char* sbuf ;
 int sbufsz ;
 int stderr ;
 char* strerror (int ) ;

int
get_stream_line(FILE *fp)
{
 int c;
 int i = 0;

 while (((c = getc(fp)) != EOF || (!feof(fp) && !ferror(fp))) &&
     c != '\n') {
  REALLOC(sbuf, sbufsz, i + 1, ERR);
  if (!(sbuf[i++] = c))
   isbinary = 1;
 }
 REALLOC(sbuf, sbufsz, i + 2, ERR);
 if (c == '\n')
  sbuf[i++] = c;
 else if (ferror(fp)) {
  fprintf(stderr, "%s\n", strerror(errno));
  errmsg = "cannot read input file";
  return ERR;
 } else if (i) {
  sbuf[i++] = '\n';
  newline_added = 1;
 }
 sbuf[i] = '\0';
 return (isbinary && newline_added && i) ? --i : i;
}
