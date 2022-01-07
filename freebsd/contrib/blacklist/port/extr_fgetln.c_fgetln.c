
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 size_t BUFSIZ ;
 int errno ;
 int * fgets (char*,size_t,int *) ;
 int free (char*) ;
 char* malloc (size_t) ;
 char* realloc (char*,size_t) ;
 char* strchr (char*,char) ;
 size_t strlen (char*) ;

char *
fgetln(FILE *fp, size_t *len)
{
 static char *buf = ((void*)0);
 static size_t bufsiz = 0;
 char *ptr;


 if (buf == ((void*)0)) {
  bufsiz = BUFSIZ;
  if ((buf = malloc(bufsiz)) == ((void*)0))
   return ((void*)0);
 }

 if (fgets(buf, bufsiz, fp) == ((void*)0))
  return ((void*)0);

 *len = 0;
 while ((ptr = strchr(&buf[*len], '\n')) == ((void*)0)) {
  size_t nbufsiz = bufsiz + BUFSIZ;
  char *nbuf = realloc(buf, nbufsiz);

  if (nbuf == ((void*)0)) {
   int oerrno = errno;
   free(buf);
   errno = oerrno;
   buf = ((void*)0);
   return ((void*)0);
  } else
   buf = nbuf;

  if (fgets(&buf[bufsiz], BUFSIZ, fp) == ((void*)0)) {
   buf[bufsiz] = '\0';
   *len = strlen(buf);
   return buf;
  }

  *len = bufsiz;
  bufsiz = nbufsiz;
 }

 *len = (ptr - buf) + 1;
 return buf;
}
