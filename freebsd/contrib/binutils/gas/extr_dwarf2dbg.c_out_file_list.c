
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* filename; int dir; } ;


 int _ (char*) ;
 int as_bad (int ,long) ;
 char** dirs ;
 unsigned int dirs_in_use ;
 TYPE_1__* files ;
 unsigned int files_in_use ;
 char* frag_more (size_t) ;
 int memcpy (char*,char*,size_t) ;
 int out_byte (char) ;
 int out_uleb128 (int ) ;
 int strlen (char*) ;

__attribute__((used)) static void
out_file_list (void)
{
  size_t size;
  char *cp;
  unsigned int i;


  for (i = 1; i < dirs_in_use; ++i)
    {
      size = strlen (dirs[i]) + 1;
      cp = frag_more (size);
      memcpy (cp, dirs[i], size);
    }

  out_byte ('\0');

  for (i = 1; i < files_in_use; ++i)
    {
      if (files[i].filename == ((void*)0))
 {
   as_bad (_("unassigned file number %ld"), (long) i);

   files[i].filename = "";
   continue;
 }

      size = strlen (files[i].filename) + 1;
      cp = frag_more (size);
      memcpy (cp, files[i].filename, size);

      out_uleb128 (files[i].dir);
      out_uleb128 (0);
      out_uleb128 (0);
    }


  out_byte (0);
}
