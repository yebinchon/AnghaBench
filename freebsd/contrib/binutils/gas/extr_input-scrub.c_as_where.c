
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* logical_input_file ;
 unsigned int logical_input_line ;
 char* physical_input_file ;
 unsigned int physical_input_line ;

void
as_where (char **namep, unsigned int *linep)
{
  if (logical_input_file != ((void*)0)
      && (linep == ((void*)0) || logical_input_line >= 0))
    {
      *namep = logical_input_file;
      if (linep != ((void*)0))
 *linep = logical_input_line;
    }
  else if (physical_input_file != ((void*)0))
    {
      *namep = physical_input_file;
      if (linep != ((void*)0))
 *linep = physical_input_line;
    }
  else
    {
      *namep = 0;
      if (linep != ((void*)0))
 *linep = 0;
    }
}
