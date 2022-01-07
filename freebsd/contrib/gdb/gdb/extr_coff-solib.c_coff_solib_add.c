
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
struct objfile {int dummy; } ;
typedef int bfd_byte ;
typedef int asection ;


 int OBJF_SHARED ;
 scalar_t__ alloca (int) ;
 int bfd_get_32 (int ,int *) ;
 int * bfd_get_section_by_name (int ,char*) ;
 int bfd_get_section_contents (int ,int *,unsigned char*,int ,int) ;
 int bfd_section_size (int ,int *) ;
 int exec_bfd ;
 int reinit_frame_cache () ;
 struct objfile* symbol_file_add (char*,int,int *,int ,int ) ;

void
coff_solib_add (char *arg_string, int from_tty, struct target_ops *target, int readsyms)
{
  asection *libsect;

  if (!readsyms)
    return;

  libsect = bfd_get_section_by_name (exec_bfd, ".lib");

  if (libsect)
    {
      int libsize;
      unsigned char *lib;
      struct libent
 {
   bfd_byte len[4];
   bfd_byte nameoffset[4];
 };

      libsize = bfd_section_size (exec_bfd, libsect);

      lib = (unsigned char *) alloca (libsize);

      bfd_get_section_contents (exec_bfd, libsect, lib, 0, libsize);

      while (libsize > 0)
 {
   struct libent *ent;
   struct objfile *objfile;
   int len, nameoffset;
   char *filename;

   ent = (struct libent *) lib;

   len = bfd_get_32 (exec_bfd, ent->len);

   nameoffset = bfd_get_32 (exec_bfd, ent->nameoffset);

   if (len <= 0)
     break;

   filename = (char *) ent + nameoffset * 4;

   objfile = symbol_file_add (filename, from_tty,
         ((void*)0),
         0,
         OBJF_SHARED);

   libsize -= len * 4;
   lib += len * 4;
 }



      reinit_frame_cache ();
    }
}
