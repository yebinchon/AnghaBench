
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callback_data {long load_start; long load_end; scalar_t__ load_offset; } ;
typedef int FILE ;


 int FOPEN_RB ;
 int SEEK_END ;
 int SEEK_SET ;
 int error (char*,char*) ;
 int * fopen_with_cleanup (char*,int ) ;
 long fread (char*,int,long,int *) ;
 scalar_t__ fseek (int *,long,int ) ;
 long ftell (int *) ;
 int make_cleanup (int ,char*) ;
 int perror_with_name (char*) ;
 int printf_filtered (char*,char*,scalar_t__,scalar_t__) ;
 int safe_strerror (long) ;
 long target_write_memory (scalar_t__,char*,long) ;
 int warning (char*,int ) ;
 int xfree ;
 char* xmalloc (long) ;

__attribute__((used)) static void
restore_binary_file (char *filename, struct callback_data *data)
{
  FILE *file = fopen_with_cleanup (filename, FOPEN_RB);
  int status;
  char *buf;
  long len;


  if (fseek (file, 0, SEEK_END) == 0)
    len = ftell (file);
  else
    perror_with_name (filename);

  if (len <= data->load_start)
    error ("Start address is greater than length of binary file %s.",
    filename);


  if (data->load_end != 0 && data->load_end < len)
    len = data->load_end;

  if (data->load_start > 0)
    len -= data->load_start;

  printf_filtered
    ("Restoring binary file %s into memory (0x%lx to 0x%lx)\n",
     filename,
     (unsigned long) data->load_start + data->load_offset,
     (unsigned long) data->load_start + data->load_offset + len);


  if (fseek (file, data->load_start, SEEK_SET) != 0)
    perror_with_name (filename);


  buf = xmalloc (len);
  make_cleanup (xfree, buf);
  if (fread (buf, 1, len, file) != len)
    perror_with_name (filename);


  len = target_write_memory (data->load_start + data->load_offset, buf, len);
  if (len != 0)
    warning ("restore: memory write failed (%s).", safe_strerror (len));
  return;
}
