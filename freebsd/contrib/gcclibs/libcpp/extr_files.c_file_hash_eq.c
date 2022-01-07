
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* dir; TYPE_1__* file; } ;
struct file_hash_entry {TYPE_3__ u; scalar_t__ start_dir; } ;
struct TYPE_5__ {char* name; } ;
struct TYPE_4__ {char* name; } ;


 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int
file_hash_eq (const void *p, const void *q)
{
  struct file_hash_entry *entry = (struct file_hash_entry *) p;
  const char *fname = (const char *) q;
  const char *hname;

  if (entry->start_dir)
    hname = entry->u.file->name;
  else
    hname = entry->u.dir->name;

  return strcmp (hname, fname) == 0;
}
