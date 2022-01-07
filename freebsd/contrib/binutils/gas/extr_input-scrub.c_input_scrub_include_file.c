
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* input_scrub_new_file (char*) ;
 int input_scrub_push (char*) ;
 int next_saved_file ;

char *
input_scrub_include_file (char *filename, char *position)
{
  next_saved_file = input_scrub_push (position);
  return input_scrub_new_file (filename);
}
