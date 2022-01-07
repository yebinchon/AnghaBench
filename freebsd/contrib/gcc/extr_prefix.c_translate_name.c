
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_DIR_SEPARATOR (char) ;
 char* PREFIX ;
 scalar_t__ alloca (int) ;
 char* concat (char const*,char*,int *) ;
 int free (char*) ;
 char* get_key_value (char*) ;
 char* getenv (char*) ;
 char* std_prefix ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static char *
translate_name (char *name)
{
  char code;
  char *key, *old_name;
  const char *prefix;
  int keylen;

  for (;;)
    {
      code = name[0];
      if (code != '@' && code != '$')
 break;

      for (keylen = 0;
    (name[keylen + 1] != 0 && !IS_DIR_SEPARATOR (name[keylen + 1]));
    keylen++)
 ;

      key = (char *) alloca (keylen + 1);
      strncpy (key, &name[1], keylen);
      key[keylen] = 0;

      if (code == '@')
 {
   prefix = get_key_value (key);
   if (prefix == 0)
     prefix = std_prefix;
 }
      else
 prefix = getenv (key);

      if (prefix == 0)
 prefix = PREFIX;






      old_name = name;
      name = concat (prefix, &name[keylen + 1], ((void*)0));
      free (old_name);
    }

  return name;
}
