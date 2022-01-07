
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nonexistent_file_ob; int nonexistent_file_hash; int dir_hash; int file_hash; } ;
typedef TYPE_1__ cpp_reader ;


 int htab_delete (int ) ;
 int obstack_free (int *,int ) ;

void
_cpp_cleanup_files (cpp_reader *pfile)
{
  htab_delete (pfile->file_hash);
  htab_delete (pfile->dir_hash);
  htab_delete (pfile->nonexistent_file_hash);
  obstack_free (&pfile->nonexistent_file_ob, 0);
}
