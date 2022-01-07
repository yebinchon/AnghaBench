
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_entry {int name; } ;
struct hash_control {int dummy; } ;


 char TOUPPER (char) ;
 int hash_insert (struct hash_control*,char*,void*) ;
 int strcpy (char*,int ) ;
 int strlen (int ) ;
 char* xmalloc (int) ;

__attribute__((used)) static void
insert_reg (const struct reg_entry *r, struct hash_control *htab)
{
  int i = 0;
  int len = strlen (r->name) + 2;
  char *buf = xmalloc (len);
  char *buf2 = xmalloc (len);

  strcpy (buf + i, r->name);
  for (i = 0; buf[i]; i++)
    {
      buf2[i] = TOUPPER (buf[i]);
    }
  buf2[i] = '\0';

  hash_insert (htab, buf, (void *) r);
  hash_insert (htab, buf2, (void *) r);
}
