
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {int filename; } ;
typedef int bfd_boolean ;


 int TRUE ;
 int free (int ) ;
 int strdup (char const*) ;

__attribute__((used)) static bfd_boolean
tg_start_source (void *p, const char *filename)
{
  struct pr_handle *info = (struct pr_handle *) p;

  free (info->filename);

  info->filename = strdup (filename);

  return TRUE;
}
