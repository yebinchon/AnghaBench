
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct os_fstab_type {scalar_t__ os_name; } ;
struct TYPE_3__ {char* h_os; int h_mask; } ;
typedef TYPE_1__ host ;


 char* GENERIC_OS_NAME ;
 int HF_OS ;
 scalar_t__ ISSET (int ,int ) ;
 scalar_t__ STREQ (char*,scalar_t__) ;
 struct os_fstab_type* os_tabs ;

__attribute__((used)) static struct os_fstab_type *
find_fstab_type(host *hp)
{
  struct os_fstab_type *op = ((void*)0);
  char *os_name = ((void*)0);

again:;
  if (os_name == 0) {
    if (ISSET(hp->h_mask, HF_OS))
      os_name = hp->h_os;
    else
      os_name = GENERIC_OS_NAME;
  }
  for (op = os_tabs; op->os_name; op++)
    if (STREQ(os_name, op->os_name))
      return op;

  os_name = GENERIC_OS_NAME;
  goto again;
}
