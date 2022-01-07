
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 char* logical_input_file ;
 int logical_input_line ;
 char* physical_input_file ;
 int physical_input_line ;
 scalar_t__ strcmp (char*,char*) ;

int
new_logical_line_flags (char *fname,
   int line_number,
   int flags)
{
  switch (flags)
    {
    case 0:
      break;
    case 1:
      if (line_number != -1)
 abort ();
      break;
    case 1 << 1:
    case 1 << 2:

      break;
    default:
      abort ();
    }

  if (line_number >= 0)
    logical_input_line = line_number;
  else if (line_number == -1 && fname && !*fname && (flags & (1 << 2)))
    {
      logical_input_file = physical_input_file;
      logical_input_line = physical_input_line;
      fname = ((void*)0);
    }

  if (fname
      && (logical_input_file == ((void*)0)
   || strcmp (logical_input_file, fname)))
    {
      logical_input_file = fname;
      return 1;
    }
  else
    return 0;
}
