
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t NUM_BASE_FILES ;
 unsigned int NUM_LANG_FILES ;
 char* get_file_basename (char const*) ;
 char const** lang_dir_names ;
 int * lang_files ;
 int * langs_for_lang_files ;
 scalar_t__ memcmp (char const*,char const*,size_t) ;
 char* strchr (char const*,char) ;
 int strcmp (char const*,int ) ;
 size_t strlen (char const*) ;

unsigned
get_base_file_bitmap (const char *input_file)
{
  const char *basename = get_file_basename (input_file);
  const char *slashpos = strchr (basename, '/');
  unsigned j;
  unsigned k;
  unsigned bitmap;





  if (slashpos)
    {
      size_t i;
      for (i = 1; i < NUM_BASE_FILES; i++)
 if ((size_t)(slashpos - basename) == strlen (lang_dir_names [i])
     && memcmp (basename, lang_dir_names[i], strlen (lang_dir_names[i])) == 0)
          {

            bitmap = 1 << i;
          }
    }




  bitmap = 0;

  for (j = 0; j < NUM_LANG_FILES; j++)
    {
      if (!strcmp(input_file, lang_files[j]))
        {
          for (k = 0; k < NUM_BASE_FILES; k++)
            {
              if (!strcmp(lang_dir_names[k], langs_for_lang_files[j]))
                bitmap |= (1 << k);
            }
        }
    }


  if (!bitmap)
    bitmap = (1 << NUM_BASE_FILES) - 1;

  return bitmap;
}
