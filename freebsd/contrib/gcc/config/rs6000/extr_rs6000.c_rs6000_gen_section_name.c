
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISALNUM (char const) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ xmalloc (int) ;

void
rs6000_gen_section_name (char **buf, const char *filename,
    const char *section_desc)
{
  const char *q, *after_last_slash, *last_period = 0;
  char *p;
  int len;

  after_last_slash = filename;
  for (q = filename; *q; q++)
    {
      if (*q == '/')
 after_last_slash = q + 1;
      else if (*q == '.')
 last_period = q;
    }

  len = strlen (after_last_slash) + strlen (section_desc) + 2;
  *buf = (char *) xmalloc (len);

  p = *buf;
  *p++ = '_';

  for (q = after_last_slash; *q; q++)
    {
      if (q == last_period)
 {
   strcpy (p, section_desc);
   p += strlen (section_desc);
   break;
 }

      else if (ISALNUM (*q))
 *p++ = *q;
    }

  if (last_period == 0)
    strcpy (p, section_desc);
  else
    *p = '\0';
}
