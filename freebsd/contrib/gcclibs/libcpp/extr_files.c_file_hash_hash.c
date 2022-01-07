
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* dir; TYPE_1__* file; } ;
struct file_hash_entry {TYPE_3__ u; scalar_t__ start_dir; } ;
typedef int hashval_t ;
struct TYPE_5__ {char* name; } ;
struct TYPE_4__ {char* name; } ;


 int htab_hash_string (char const*) ;

__attribute__((used)) static hashval_t
file_hash_hash (const void *p)
{
  struct file_hash_entry *entry = (struct file_hash_entry *) p;
  const char *hname;
  if (entry->start_dir)
    hname = entry->u.file->name;
  else
    hname = entry->u.dir->name;

  return htab_hash_string (hname);
}
