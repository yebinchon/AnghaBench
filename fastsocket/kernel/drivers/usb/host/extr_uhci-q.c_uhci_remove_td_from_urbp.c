
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhci_td {int list; } ;


 int list_del_init (int *) ;

__attribute__((used)) static void uhci_remove_td_from_urbp(struct uhci_td *td)
{
 list_del_init(&td->list);
}
