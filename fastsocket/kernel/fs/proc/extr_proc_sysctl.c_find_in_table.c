
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int len; int name; } ;
struct ctl_table {scalar_t__ procname; scalar_t__ ctl_name; } ;


 scalar_t__ memcmp (scalar_t__,int ,int) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static struct ctl_table *find_in_table(struct ctl_table *p, struct qstr *name)
{
 int len;
 for ( ; p->ctl_name || p->procname; p++) {

  if (!p->procname)
   continue;

  len = strlen(p->procname);
  if (len != name->len)
   continue;

  if (memcmp(p->procname, name->name, len) != 0)
   continue;


  return p;
 }
 return ((void*)0);
}
