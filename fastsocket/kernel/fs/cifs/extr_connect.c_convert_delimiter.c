
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
convert_delimiter(char *path, char delim)
{
 int i;
 char old_delim;

 if (path == ((void*)0))
  return;

 if (delim == '/')
  old_delim = '\\';
 else
  old_delim = '/';

 for (i = 0; path[i] != '\0'; i++) {
  if (path[i] == old_delim)
   path[i] = delim;
 }
}
