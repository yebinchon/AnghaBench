
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 char const bfd_get_symbol_leading_char (int *) ;
 char* bfd_malloc (size_t) ;
 char* cplus_demangle (char const*,int) ;
 int free (char*) ;
 int memcpy (char*,char const*,size_t) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

char *
bfd_demangle (bfd *abfd, const char *name, int options)
{
  char *res, *alloc;
  const char *pre, *suf;
  size_t pre_len;

  if (abfd != ((void*)0)
      && *name != '\0'
      && bfd_get_symbol_leading_char (abfd) == *name)
    ++name;





  pre = name;
  while (*name == '.' || *name == '$')
    ++name;
  pre_len = name - pre;


  alloc = ((void*)0);
  suf = strchr (name, '@');
  if (suf != ((void*)0))
    {
      alloc = bfd_malloc (suf - name + 1);
      if (alloc == ((void*)0))
 return ((void*)0);
      memcpy (alloc, name, suf - name);
      alloc[suf - name] = '\0';
      name = alloc;
    }

  res = cplus_demangle (name, options);

  if (alloc != ((void*)0))
    free (alloc);

  if (res == ((void*)0))
    return ((void*)0);


  if (pre_len != 0 || suf != ((void*)0))
    {
      size_t len;
      size_t suf_len;
      char *final;

      len = strlen (res);
      if (suf == ((void*)0))
 suf = res + len;
      suf_len = strlen (suf) + 1;
      final = bfd_malloc (pre_len + len + suf_len);
      if (final != ((void*)0))
 {
   memcpy (final, pre, pre_len);
   memcpy (final + pre_len, res, len);
   memcpy (final + pre_len + len, suf, suf_len);
 }
      free (res);
      res = final;
    }

  return res;
}
