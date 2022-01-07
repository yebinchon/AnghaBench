
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int feof (int *) ;
 int ferror (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int getc (int *) ;
 scalar_t__ isascii (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;
 int strlen (char*) ;
 int ungetc (int,int *) ;

int
file_read_line(char *buf, int size, FILE *fp)
{
  int done = 0;

  do {
    while (fgets(buf, size, fp)) {
      int len = strlen(buf);
      done += len;
      if (len > 1 && buf[len - 2] == '\\' &&
   buf[len - 1] == '\n') {
 int ch;
 buf += len - 2;
 size -= len - 2;
 *buf = '\n';
 buf[1] = '\0';



 while ((ch = getc(fp)) != EOF &&
        isascii((unsigned char)ch) && isspace((unsigned char)ch)) ;
 (void) ungetc(ch, fp);
      } else {
 return done;
      }
    }
  } while (size > 0 && !feof(fp) && !ferror(fp));

  return done;
}
