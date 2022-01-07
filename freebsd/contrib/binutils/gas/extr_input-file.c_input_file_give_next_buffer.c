
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BUFFER_SIZE ;
 int _ (char*) ;
 int as_bad (int ,int ,int ) ;
 int as_warn (int ,int ,int ) ;
 int do_scrub_chars (int ,char*,int ) ;
 int errno ;
 int * f_in ;
 scalar_t__ fclose (int *) ;
 int file_name ;
 int fread (char*,int,int ,int *) ;
 int input_file_get ;
 scalar_t__ preprocess ;
 int xstrerror (int ) ;

char *
input_file_give_next_buffer (char *where )
{
  char *return_value;
  register int size;

  if (f_in == (FILE *) 0)
    return 0;




  if (preprocess)
    size = do_scrub_chars (input_file_get, where, BUFFER_SIZE);
  else
    size = fread (where, sizeof (char), BUFFER_SIZE, f_in);
  if (size < 0)
    {
      as_bad (_("can't read from %s: %s"), file_name, xstrerror (errno));
      size = 0;
    }
  if (size)
    return_value = where + size;
  else
    {
      if (fclose (f_in))
 as_warn (_("can't close %s: %s"), file_name, xstrerror (errno));

      f_in = (FILE *) 0;
      return_value = 0;
    }

  return return_value;
}
