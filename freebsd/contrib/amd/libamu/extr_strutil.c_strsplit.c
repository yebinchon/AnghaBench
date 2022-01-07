
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int voidp ;


 int D_STR ;
 int XLOG_DEBUG ;
 scalar_t__ amuDebug (int ) ;
 scalar_t__ isascii (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;
 int plog (int ,char*,...) ;
 scalar_t__ xmalloc (int) ;
 scalar_t__ xrealloc (int ,int) ;

char **
strsplit(char *s, int ch, int qc)
{
  char **ivec;
  int ic = 0;
  int done = 0;

  ivec = (char **) xmalloc((ic + 1) * sizeof(char *));

  while (!done) {
    char *v;




    while (*s && (ch == ' ' ? (isascii((unsigned char)*s) && isspace((unsigned char)*s)) : *s == ch))
      *s++ = '\0';




    if (!*s)
      break;




    v = s;




    while (*s && !(ch == ' ' ? (isascii((unsigned char)*s) && isspace((unsigned char)*s)) : *s == ch)) {
      if (*s++ == qc) {



 s++;
 while (*s && *s != qc)
   s++;
 if (*s == qc)
   s++;
      }
    }

    if (!*s)
      done = 1;
    *s++ = '\0';




    ivec[ic++] = v;
    ivec = (char **) xrealloc((voidp) ivec, (ic + 1) * sizeof(char *));
    if (amuDebug(D_STR))
      plog(XLOG_DEBUG, "strsplit saved \"%s\"", v);
  }

  if (amuDebug(D_STR))
    plog(XLOG_DEBUG, "strsplit saved a total of %d strings", ic);

  ivec[ic] = ((void*)0);

  return ivec;
}
