
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_19__ {int (* read_pch ) (TYPE_4__*,int ,int,scalar_t__) ;} ;
struct TYPE_21__ {TYPE_5__* all_files; int seen_once_only; TYPE_2__ cb; } ;
typedef TYPE_4__ cpp_reader ;
struct TYPE_20__ {scalar_t__ st_mtime; scalar_t__ st_size; } ;
struct TYPE_22__ {int fd; scalar_t__ err_no; scalar_t__ path; int buffer_valid; scalar_t__ buffer; TYPE_3__ st; int name; int dir; scalar_t__ once_only; struct TYPE_22__* next_file; int pchname; scalar_t__ pch; TYPE_1__* cmacro; scalar_t__ stack_count; } ;
typedef TYPE_5__ _cpp_file ;
struct TYPE_18__ {scalar_t__ type; } ;


 scalar_t__ NT_MACRO ;
 int _cpp_mark_file_once_only (TYPE_4__*,TYPE_5__*) ;
 scalar_t__ check_file_against_entries (TYPE_4__*,TYPE_5__*,int) ;
 int close (int) ;
 int destroy_cpp_file (TYPE_5__*) ;
 TYPE_5__* make_cpp_file (TYPE_4__*,int ,int ) ;
 int memcmp (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ read_file (TYPE_4__*,TYPE_5__*) ;
 int stub1 (TYPE_4__*,int ,int,scalar_t__) ;

__attribute__((used)) static bool
should_stack_file (cpp_reader *pfile, _cpp_file *file, bool import)
{
  _cpp_file *f;


  if (file->once_only)
    return 0;




  if (import)
    {
      _cpp_mark_file_once_only (pfile, file);


      if (file->stack_count)
 return 0;
    }



  if (file->cmacro && file->cmacro->type == NT_MACRO)
    return 0;


  if (file->pch)
    {
      pfile->cb.read_pch (pfile, file->pchname, file->fd, file->path);
      close (file->fd);
      file->fd = -1;
      return 0;
    }

  if (!read_file (pfile, file))
    return 0;




  if (check_file_against_entries (pfile, file, import))
    {



      if (! import)
 _cpp_mark_file_once_only (pfile, file);
      return 0;
    }



  if (!pfile->seen_once_only)
    return 1;



  for (f = pfile->all_files; f; f = f->next_file)
    {
      if (f == file)
 continue;

      if ((import || f->once_only)
   && f->err_no == 0
   && f->st.st_mtime == file->st.st_mtime
   && f->st.st_size == file->st.st_size)
 {
   _cpp_file *ref_file;
   bool same_file_p = 0;

   if (f->buffer && !f->buffer_valid)
     {


       ref_file = make_cpp_file (pfile, f->dir, f->name);
       ref_file->path = f->path;
     }
   else

     ref_file = f;

   same_file_p = read_file (pfile, ref_file)

   && ref_file->st.st_size == file->st.st_size
   && !memcmp (ref_file->buffer,
        file->buffer,
        file->st.st_size);

   if (f->buffer && !f->buffer_valid)
     {
       ref_file->path = 0;
       destroy_cpp_file (ref_file);
     }

   if (same_file_p)
     break;
 }
    }

  return f == ((void*)0);
}
