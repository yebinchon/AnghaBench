
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int hashval_t ;
struct TYPE_15__ {int nonexistent_file_hash; int nonexistent_file_ob; } ;
typedef TYPE_1__ cpp_reader ;
struct TYPE_16__ {char* name; scalar_t__ err_no; char* path; TYPE_3__* dir; } ;
typedef TYPE_2__ _cpp_file ;
struct TYPE_17__ {char* (* construct ) (char*,TYPE_3__*) ;} ;


 scalar_t__ CPP_OPTION (TYPE_1__*,int ) ;
 scalar_t__ ENOENT ;
 int INSERT ;
 char* append_file_to_dir (char*,TYPE_3__*) ;
 int free (char*) ;
 void** htab_find_slot_with_hash (int ,char*,int ,int ) ;
 int * htab_find_with_hash (int ,char*,int ) ;
 int htab_hash_string (char*) ;
 char* obstack_copy0 (int *,char*,int ) ;
 scalar_t__ open_file (TYPE_2__*) ;
 int open_file_failed (TYPE_1__*,TYPE_2__*,int ) ;
 scalar_t__ pch_open_file (TYPE_1__*,TYPE_2__*,int*) ;
 int remap ;
 char* remap_filename (TYPE_1__*,TYPE_2__*) ;
 int strlen (char*) ;
 char* stub1 (char*,TYPE_3__*) ;

__attribute__((used)) static bool
find_file_in_dir (cpp_reader *pfile, _cpp_file *file, bool *invalid_pch)
{
  char *path;

  if (CPP_OPTION (pfile, remap) && (path = remap_filename (pfile, file)))
    ;
  else
    if (file->dir->construct)
      path = file->dir->construct (file->name, file->dir);
    else
      path = append_file_to_dir (file->name, file->dir);

  if (path)
    {
      hashval_t hv = htab_hash_string (path);
      char *copy;
      void **pp;

      if (htab_find_with_hash (pfile->nonexistent_file_hash, path, hv) != ((void*)0))
 {
   file->err_no = ENOENT;
   return 0;
 }

      file->path = path;
      if (pch_open_file (pfile, file, invalid_pch))
 return 1;

      if (open_file (file))
 return 1;

      if (file->err_no != ENOENT)
 {
   open_file_failed (pfile, file, 0);
   return 1;
 }




      copy = obstack_copy0 (&pfile->nonexistent_file_ob, path,
       strlen (path));
      free (path);
      pp = htab_find_slot_with_hash (pfile->nonexistent_file_hash,
         copy, hv, INSERT);
      *pp = copy;

      file->path = file->name;
    }
  else
    {
      file->err_no = ENOENT;
      file->path = ((void*)0);
    }

  return 0;
}
