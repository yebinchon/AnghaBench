
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EINVAL ;
 int EOF ;
 long MAX_CANON ;
 int errno ;
 scalar_t__ ferror (int *) ;
 int getc (int *) ;
 scalar_t__ xrealloc (char*,long) ;

__attribute__((used)) static long
TB_getline (char **lineptr, long *n, FILE *stream)
{
  char *line, *p;
  long size, copy;

  if (lineptr == ((void*)0) || n == ((void*)0))
    {
      errno = EINVAL;
      return -1;
    }

  if (ferror (stream))
    return -1;


  if (*lineptr == ((void*)0) || *n < 2)
    {



      line = (char *) xrealloc (*lineptr, 256);
      if (line == ((void*)0))
        return -1;
      *lineptr = line;
      *n = 256;
    }

  line = *lineptr;
  size = *n;

  copy = size;
  p = line;

  while (1)
    {
      long len;

      while (--copy > 0)
        {
          register int c = getc (stream);
          if (c == EOF)
            goto lose;
          else if ((*p++ = c) == '\n')
            goto win;
        }


      len = p - line;
      size *= 2;
      line = (char *) xrealloc (line, size);
      if (line == ((void*)0))
        goto lose;
      *lineptr = line;
      *n = size;
      p = line + len;
      copy = size - len;
    }

 lose:
  if (p == *lineptr)
    return -1;


 win:




  *p = '\0';
  return p - *lineptr;
}
