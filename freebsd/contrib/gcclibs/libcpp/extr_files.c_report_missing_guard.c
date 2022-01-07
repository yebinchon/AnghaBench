
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* file; } ;
struct file_hash_entry {TYPE_1__ u; int * start_dir; } ;
struct TYPE_4__ {int stack_count; int path; int main_file; int * cmacro; } ;
typedef TYPE_2__ _cpp_file ;


 int _ (char*) ;
 int fputs (int ,int ) ;
 int putc (char,int ) ;
 int stderr ;

__attribute__((used)) static int
report_missing_guard (void **slot, void *b)
{
  struct file_hash_entry *entry = (struct file_hash_entry *) *slot;
  int *bannerp = (int *) b;


  if (entry->start_dir != ((void*)0))
    {
      _cpp_file *file = entry->u.file;


      if (file->cmacro == ((void*)0) && file->stack_count == 1 && !file->main_file)
 {
   if (*bannerp == 0)
     {
       fputs (_("Multiple include guards may be useful for:\n"),
       stderr);
       *bannerp = 1;
     }

   fputs (entry->u.file->path, stderr);
   putc ('\n', stderr);
 }
    }

  return 0;
}
