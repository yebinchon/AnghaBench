
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int at_end; int linenum; scalar_t__ pos; int filename; } ;
typedef TYPE_1__ file_info_type ;


 int EOF ;
 int FOPEN_RT ;
 int SEEK_SET ;
 int fclose (int *) ;
 int fgetc (int *) ;
 int * fopen (int ,int ) ;
 int fseek (int *,scalar_t__,int ) ;
 scalar_t__ ftell (int *) ;
 int * last_open_file ;
 TYPE_1__* last_open_file_info ;

__attribute__((used)) static char *
buffer_line (file_info_type *file, char *line, unsigned int size)
{
  unsigned int count = 0;
  int c;

  char *p = line;


  if (file->at_end)
    return "";


  if (!last_open_file_info || file != last_open_file_info)
    {
      if (last_open_file)
 {
   last_open_file_info->pos = ftell (last_open_file);
   fclose (last_open_file);
 }

      last_open_file_info = file;
      last_open_file = fopen (file->filename, FOPEN_RT);
      if (last_open_file == ((void*)0))
 {
   file->at_end = 1;
   return "";
 }


      if (file->pos)
 fseek (last_open_file, file->pos, SEEK_SET);
    }

  c = fgetc (last_open_file);


  size -= 1;

  while (c != EOF && c != '\n')
    {
      if (count < size)
 *p++ = c;
      count++;

      c = fgetc (last_open_file);

    }
  if (c == EOF)
    {
      file->at_end = 1;
      if (count + 2 < size)
 {
   *p++ = '.';
   *p++ = '.';
   *p++ = '.';
 }
    }
  file->linenum++;
  *p++ = 0;
  return line;
}
