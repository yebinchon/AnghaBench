
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pr_handle {char* filename; int f; TYPE_1__* stack; } ;
typedef int bfd_signed_vma ;
typedef int bfd_boolean ;
struct TYPE_2__ {char* type; } ;


 int FALSE ;
 int TRUE ;
 int fprintf (int ,char*,char const*,char*,char const*,...) ;
 int pr_enum_type (void*,char const*,char const**,int *) ;
 int print_vma (int ,char*,int ,int ) ;

__attribute__((used)) static bfd_boolean
tg_enum_type (void *p, const char *tag, const char **names,
       bfd_signed_vma *values)
{
  struct pr_handle *info = (struct pr_handle *) p;
  unsigned int i;
  const char *name;
  char ab[20];

  if (! pr_enum_type (p, tag, names, values))
    return FALSE;

  name = tag ? tag : "unknown";

  if (tag)
    fprintf (info->f, "%s\t%s\t0;\"\tkind:e\ttype:%s\n", tag,
      info->filename, info->stack->type);


  if (names != ((void*)0))
    {
      for (i = 0; names[i] != ((void*)0); i++)
 {
   print_vma (values[i], ab, FALSE, FALSE);
   fprintf (info->f, "%s\t%s\t0;\"\tkind:g\tenum:%s\tvalue:%s\n",
     names[i], info->filename, name, ab);
 }
    }

  return TRUE;
}
