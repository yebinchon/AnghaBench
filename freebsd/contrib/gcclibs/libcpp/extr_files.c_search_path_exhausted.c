
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int * (* missing_header_cb ) (TYPE_2__*,char const*,int **) ;
struct TYPE_8__ {int * (* missing_header ) (TYPE_2__*,char const*,int **) ;} ;
struct TYPE_9__ {TYPE_1__ cb; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_10__ {int * name; int * path; int * dir; } ;
typedef TYPE_4__ _cpp_file ;


 int free (void*) ;
 scalar_t__ open_file (TYPE_4__*) ;

__attribute__((used)) static bool
search_path_exhausted (cpp_reader *pfile, const char *header, _cpp_file *file)
{
  missing_header_cb func = pfile->cb.missing_header;



  if (func
      && file->dir == ((void*)0))
    {
      if ((file->path = func (pfile, header, &file->dir)) != ((void*)0))
 {
   if (open_file (file))
     return 1;
   free ((void *)file->path);
 }
      file->path = file->name;
    }

  return 0;
}
