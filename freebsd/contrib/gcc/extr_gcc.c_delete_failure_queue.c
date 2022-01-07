
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temp_file {int name; struct temp_file* next; } ;


 int delete_if_ordinary (int ) ;
 struct temp_file* failure_delete_queue ;

__attribute__((used)) static void
delete_failure_queue (void)
{
  struct temp_file *temp;

  for (temp = failure_delete_queue; temp; temp = temp->next)
    delete_if_ordinary (temp->name);
}
