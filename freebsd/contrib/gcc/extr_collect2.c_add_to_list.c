
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct id {scalar_t__ sequence; struct id* next; int name; } ;
struct head {int number; struct id* last; struct id* first; } ;


 int free (struct id*) ;
 scalar_t__ sequence_number ;
 scalar_t__ strcmp (char const*,int ) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;
 struct id* xcalloc (scalar_t__,int) ;

__attribute__((used)) static void
add_to_list (struct head *head_ptr, const char *name)
{
  struct id *newid = xcalloc (sizeof (struct id) + strlen (name), 1);
  struct id *p;
  strcpy (newid->name, name);

  if (head_ptr->first)
    head_ptr->last->next = newid;
  else
    head_ptr->first = newid;


  for (p = head_ptr->first;
       strcmp (name, p->name) != 0;
       p = p->next)
    ;
  if (p != newid)
    {
      head_ptr->last->next = 0;
      free (newid);
      return;
    }

  newid->sequence = ++sequence_number;
  head_ptr->last = newid;
  head_ptr->number++;
}
