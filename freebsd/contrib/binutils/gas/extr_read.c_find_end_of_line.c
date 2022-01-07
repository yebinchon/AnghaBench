
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _find_end_of_line (char*,int,int ) ;

char *
find_end_of_line (char *s, int mri_string)
{
  return _find_end_of_line (s, mri_string, 0);
}
