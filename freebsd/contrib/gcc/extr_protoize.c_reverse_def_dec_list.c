
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* fip; } ;
typedef TYPE_1__ hash_table_entry ;
struct TYPE_6__ {TYPE_3__* defs_decs; } ;
typedef TYPE_2__ file_info ;
struct TYPE_7__ {struct TYPE_7__* next_in_file; } ;
typedef TYPE_3__ def_dec_info ;



__attribute__((used)) static void
reverse_def_dec_list (const hash_table_entry *hp)
{
  file_info *file_p = hp->fip;
  def_dec_info *prev = ((void*)0);
  def_dec_info *current = (def_dec_info *) file_p->defs_decs;

  if (!current)
    return;

  prev = current;
  if (! (current = (def_dec_info *) current->next_in_file))
    return;

  prev->next_in_file = ((void*)0);

  while (current)
    {
      def_dec_info *next = (def_dec_info *) current->next_in_file;

      current->next_in_file = prev;
      prev = current;
      current = next;
    }

  file_p->defs_decs = prev;
}
