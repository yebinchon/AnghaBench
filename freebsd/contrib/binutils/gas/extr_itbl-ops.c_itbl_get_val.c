
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itbl_entry {unsigned long value; } ;
typedef int e_type ;
typedef int e_processor ;


 struct itbl_entry* find_entry_byname (int ,int ,char*) ;

int
itbl_get_val (e_processor processor, e_type type, char *name,
       unsigned long *pval)
{
  struct itbl_entry *r;

  r = find_entry_byname (processor, type, name);
  if (r == ((void*)0))
    return 0;
  *pval = r->value;
  return 1;
}
