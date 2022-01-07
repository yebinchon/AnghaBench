
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

__attribute__((used)) static const char *
base_file_name (const char *file_name)
{
  int directory_name_length;

  directory_name_length = strlen (file_name);




  while (directory_name_length >= 0 && file_name[directory_name_length] != '/')

    directory_name_length--;
  return file_name + directory_name_length + 1;
}
