
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIR_SEPARATOR ;
 scalar_t__ IS_DIR_SEPARATOR (char) ;
 scalar_t__ IS_SAME_PATH_CHAR (char,char) ;
 char* abspath (char const*,char const*) ;
 char* cwd_buffer ;
 int strlen (char const*) ;
 char* xmalloc (size_t) ;

__attribute__((used)) static const char *
shortpath (const char *cwd, const char *filename)
{
  char *rel_buffer;
  char *rel_buf_p;
  char *cwd_p = cwd_buffer;
  char *path_p;
  int unmatched_slash_count = 0;
  size_t filename_len = strlen (filename);

  path_p = abspath (cwd, filename);
  rel_buf_p = rel_buffer = xmalloc (filename_len);

  while (*cwd_p && IS_SAME_PATH_CHAR (*cwd_p, *path_p))
    {
      cwd_p++;
      path_p++;
    }
  if (!*cwd_p && (!*path_p || IS_DIR_SEPARATOR (*path_p)))
    {

      if (!*path_p)
 return ".";
      else
 return ++path_p;
    }
  else
    {
      if (*path_p)
 {
   --cwd_p;
   --path_p;
   while (! IS_DIR_SEPARATOR (*cwd_p))
     {
       --cwd_p;
       --path_p;
     }
   cwd_p++;
   path_p++;
   unmatched_slash_count++;
 }


      while (*cwd_p++)
 if (IS_DIR_SEPARATOR (*(cwd_p-1)))
   unmatched_slash_count++;



      if (unmatched_slash_count * 3 + strlen (path_p) >= filename_len)
 return filename;


      while (unmatched_slash_count--)
 {


   if (rel_buffer + filename_len <= rel_buf_p + 3)
     return filename;
   *rel_buf_p++ = '.';
   *rel_buf_p++ = '.';
   *rel_buf_p++ = DIR_SEPARATOR;
 }


      do
 {
   if (rel_buffer + filename_len <= rel_buf_p)
     return filename;
 }
      while ((*rel_buf_p++ = *path_p++));

      --rel_buf_p;
      if (IS_DIR_SEPARATOR (*(rel_buf_p-1)))
 *--rel_buf_p = '\0';
      return rel_buffer;
    }
}
