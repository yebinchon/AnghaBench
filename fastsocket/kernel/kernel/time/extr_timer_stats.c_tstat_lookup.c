
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {struct entry* next; int comm; scalar_t__ count; } ;


 int TASK_COMM_LEN ;
 struct entry* alloc_entry () ;
 scalar_t__ match_entries (struct entry*,struct entry*) ;
 int memcpy (int ,char*,int ) ;
 int smp_mb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int table_lock ;
 struct entry** tstat_hashentry (struct entry*) ;

__attribute__((used)) static struct entry *tstat_lookup(struct entry *entry, char *comm)
{
 struct entry **head, *curr, *prev;

 head = tstat_hashentry(entry);
 curr = *head;






 while (curr) {
  if (match_entries(curr, entry))
   return curr;

  curr = curr->next;
 }



 prev = ((void*)0);
 curr = *head;

 spin_lock(&table_lock);



 while (curr) {
  if (match_entries(curr, entry))
   goto out_unlock;

  prev = curr;
  curr = curr->next;
 }

 curr = alloc_entry();
 if (curr) {
  *curr = *entry;
  curr->count = 0;
  curr->next = ((void*)0);
  memcpy(curr->comm, comm, TASK_COMM_LEN);

  smp_mb();

  if (prev)
   prev->next = curr;
  else
   *head = curr;
 }
 out_unlock:
 spin_unlock(&table_lock);

 return curr;
}
