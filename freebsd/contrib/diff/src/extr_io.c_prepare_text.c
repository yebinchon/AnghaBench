
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word ;
struct file_data {size_t buffered; int missing_newline; } ;


 char* FILE_BUFFER (struct file_data*) ;
 char* memchr (char*,char,size_t) ;
 int memset (char*,int ,int) ;
 scalar_t__ strip_trailing_cr ;

__attribute__((used)) static void
prepare_text (struct file_data *current)
{
  size_t buffered = current->buffered;
  char *p = FILE_BUFFER (current);
  char *dst;

  if (buffered == 0 || p[buffered - 1] == '\n')
    current->missing_newline = 0;
  else
    {
      p[buffered++] = '\n';
      current->missing_newline = 1;
    }

  if (!p)
    return;


  memset (p + buffered, 0, sizeof (word));

  if (strip_trailing_cr && (dst = memchr (p, '\r', buffered)))
    {
      char const *src = dst;
      char const *srclim = p + buffered;

      do
 dst += ! ((*dst = *src++) == '\r' && *src == '\n');
      while (src < srclim);

      buffered -= src - dst;
    }

  current->buffered = buffered;
}
