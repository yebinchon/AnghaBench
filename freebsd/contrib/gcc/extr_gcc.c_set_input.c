
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_DIR_SEPARATOR (char const) ;
 int basename_length ;
 char* input_basename ;
 char* input_filename ;
 void* input_filename_length ;
 scalar_t__ input_stat_set ;
 char const* input_suffix ;
 void* strlen (char*) ;
 int suffixed_basename_length ;

void
set_input (const char *filename)
{
  const char *p;

  input_filename = filename;
  input_filename_length = strlen (input_filename);

  input_basename = input_filename;





  for (p = input_basename; *p; p++)
    if (IS_DIR_SEPARATOR (*p))
      input_basename = p + 1;



  basename_length = strlen (input_basename);
  suffixed_basename_length = basename_length;
  p = input_basename + basename_length;
  while (p != input_basename && *p != '.')
    --p;
  if (*p == '.' && p != input_basename)
    {
      basename_length = p - input_basename;
      input_suffix = p + 1;
    }
  else
    input_suffix = "";




  input_stat_set = 0;
}
