
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* time_t ;
struct stat {void* st_mtime; } ;
struct TYPE_6__ {TYPE_2__* fip; } ;
typedef TYPE_1__ hash_table_entry ;
struct TYPE_7__ {void* mtime; int * defs_decs; TYPE_1__* hash_entry; } ;
typedef TYPE_2__ file_info ;


 int errno ;
 int filename_primary ;
 TYPE_1__* lookup (int ,char const*) ;
 int notice (char*,int ,int ,int ) ;
 int pname ;
 int shortpath (int *,char const*) ;
 int stat (char const*,struct stat*) ;
 TYPE_2__* xmalloc (int) ;
 int xstrerror (int) ;

__attribute__((used)) static file_info *
find_file (const char *filename, int do_not_stat)
{
  hash_table_entry *hash_entry_p;

  hash_entry_p = lookup (filename_primary, filename);
  if (hash_entry_p->fip)
    return hash_entry_p->fip;
  else
    {
      struct stat stat_buf;
      file_info *file_p = xmalloc (sizeof (file_info));




      if (do_not_stat)
 stat_buf.st_mtime = (time_t) 0;
      else
 {
   if (stat (filename, &stat_buf) == -1)
     {
       int errno_val = errno;
       notice ("%s: %s: can't get status: %s\n",
        pname, shortpath (((void*)0), filename),
        xstrerror (errno_val));
       stat_buf.st_mtime = (time_t) -1;
     }
 }

      hash_entry_p->fip = file_p;
      file_p->hash_entry = hash_entry_p;
      file_p->defs_decs = ((void*)0);
      file_p->mtime = stat_buf.st_mtime;
      return file_p;
    }
}
