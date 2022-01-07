
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itbl_entry {char* name; } ;
typedef int e_type ;
typedef int e_processor ;


 struct itbl_entry* find_entry_byval (int ,int ,unsigned long,int ) ;

char *
itbl_get_name (e_processor processor, e_type type, unsigned long val)
{
  struct itbl_entry *r;

  r = find_entry_byval (processor, type, val, 0);
  if (r)
    return r->name;
  else
    return 0;
}
