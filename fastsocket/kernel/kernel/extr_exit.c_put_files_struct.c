
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdtable {int dummy; } ;
struct files_struct {struct fdtable fdtab; int count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int close_files (struct files_struct*) ;
 int files_cachep ;
 struct fdtable* files_fdtable (struct files_struct*) ;
 int free_fdtable (struct fdtable*) ;
 int kmem_cache_free (int ,struct files_struct*) ;

void put_files_struct(struct files_struct *files)
{
 struct fdtable *fdt;

 if (atomic_dec_and_test(&files->count)) {
  close_files(files);






  fdt = files_fdtable(files);
  if (fdt != &files->fdtab)
   kmem_cache_free(files_cachep, files);
  free_fdtable(fdt);
 }
}
