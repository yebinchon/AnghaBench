
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dump_file_info {scalar_t__ state; scalar_t__ num; int flags; int suffix; } ;
typedef enum tree_dump_index { ____Placeholder_tree_dump_index } tree_dump_index ;
typedef int dump_id ;


 int TDF_IPA ;
 int TDF_TREE ;
 int TDI_none ;
 char* concat (int ,char*,int ,int *) ;
 int dump_base_name ;
 struct dump_file_info* get_dump_file_info (int) ;
 scalar_t__ snprintf (char*,int,char*,scalar_t__,char) ;

char *
get_dump_file_name (enum tree_dump_index phase)
{
  char dump_id[10];
  struct dump_file_info *dfi;

  if (phase == TDI_none)
    return ((void*)0);

  dfi = get_dump_file_info (phase);
  if (dfi->state == 0)
    return ((void*)0);

  if (dfi->num < 0)
    dump_id[0] = '\0';
  else
    {
      char suffix;
      if (dfi->flags & TDF_TREE)
 suffix = 't';
      else if (dfi->flags & TDF_IPA)
 suffix = 'i';
      else
 suffix = 'r';

      if (snprintf (dump_id, sizeof (dump_id), ".%03d%c", dfi->num, suffix) < 0)
 dump_id[0] = '\0';
    }

  return concat (dump_base_name, dump_id, dfi->suffix, ((void*)0));
}
