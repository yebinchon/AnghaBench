
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AFTER_SIZE ;
 char* AFTER_STRING ;
 scalar_t__ BEFORE_SIZE ;
 char* BEFORE_STRING ;
 scalar_t__ buffer_length ;
 int buffer_start ;
 int do_scrub_begin (int ) ;
 int flag_m68k_mri ;
 int input_file_begin () ;
 scalar_t__ input_file_buffer_size () ;
 int know (int) ;
 char* logical_input_file ;
 int logical_input_line ;
 int memcpy (int ,char*,int) ;
 int * next_saved_file ;
 int * physical_input_file ;
 int strlen (char*) ;
 int xmalloc (scalar_t__) ;

void
input_scrub_begin (void)
{
  know (strlen (BEFORE_STRING) == BEFORE_SIZE);
  know (strlen (AFTER_STRING) == AFTER_SIZE
 || (AFTER_STRING[0] == '\0' && AFTER_SIZE == 1));

  input_file_begin ();

  buffer_length = input_file_buffer_size ();

  buffer_start = xmalloc ((BEFORE_SIZE + buffer_length + buffer_length + AFTER_SIZE));
  memcpy (buffer_start, BEFORE_STRING, (int) BEFORE_SIZE);


  logical_input_line = -1;
  logical_input_file = (char *) ((void*)0);
  physical_input_file = ((void*)0);
  next_saved_file = ((void*)0);
  do_scrub_begin (flag_m68k_mri);
}
