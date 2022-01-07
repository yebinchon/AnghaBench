
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALWAYS_STRIP_DOTDOT ;
 char DIR_SEPARATOR ;
 char DIR_SEPARATOR_2 ;
 scalar_t__ IS_DIR_SEPARATOR (char const) ;
 int UPDATE_PATH_HOST_CANONICALIZE (char*) ;
 int X_OK ;
 scalar_t__ access (char*,int ) ;
 void* concat (char const*,char const*,int *) ;
 int free (char*) ;
 int std_prefix ;
 char* strchr (char*,char) ;
 int strlen (int ) ;
 int strncmp (char const*,int ,int const) ;
 int tr (char*,char,char) ;
 char* translate_name (char*) ;
 char* xstrdup (char const*) ;

char *
update_path (const char *path, const char *key)
{
  char *result, *p;
  const int len = strlen (std_prefix);

  if (! strncmp (path, std_prefix, len)
      && (IS_DIR_SEPARATOR(path[len])
          || path[len] == '\0')
      && key != 0)
    {
      bool free_key = 0;

      if (key[0] != '$')
 {
   key = concat ("@", key, ((void*)0));
   free_key = 1;
 }

      result = concat (key, &path[len], ((void*)0));
      if (free_key)
 free ((char *) key);
      result = translate_name (result);
    }
  else
    result = xstrdup (path);





  p = result;
  while (1)
    {
      char *src, *dest;

      p = strchr (p, '.');
      if (p == ((void*)0))
 break;

      if (p[1] == '.'
   && IS_DIR_SEPARATOR (p[2])
   && (p != result && IS_DIR_SEPARATOR (p[-1])))
 {
   *p = 0;
   if (!0 && access (result, X_OK) == 0)
     {
       *p = '.';
       break;
     }
   else
     {



       dest = p;
       do
  {
    --dest;
    while (dest != result && IS_DIR_SEPARATOR (*dest))
      --dest;
    while (dest != result && !IS_DIR_SEPARATOR (dest[-1]))
      --dest;
  }
       while (dest != result && *dest == '.');


       if (*dest == '.' || IS_DIR_SEPARATOR (*dest))
  {
    *p = '.';
    break;
  }
       src = p + 3;
       while (IS_DIR_SEPARATOR (*src))
  ++src;
       p = dest;
       while ((*dest++ = *src++) != 0)
  ;
     }
 }
      else
 ++p;
    }
  return result;
}
