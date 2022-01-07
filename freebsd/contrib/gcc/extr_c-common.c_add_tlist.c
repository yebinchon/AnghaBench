
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct tlist {scalar_t__ writer; int expr; struct tlist* next; } ;


 struct tlist* new_tlist (struct tlist*,int ,scalar_t__) ;

__attribute__((used)) static void
add_tlist (struct tlist **to, struct tlist *add, tree exclude_writer, int copy)
{
  while (add)
    {
      struct tlist *next = add->next;
      if (!copy)
 add->next = *to;
      if (!exclude_writer || add->writer != exclude_writer)
 *to = copy ? new_tlist (*to, add->expr, add->writer) : add;
      add = next;
    }
}
