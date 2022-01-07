
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fetch_type {int name; } ;


 int ARRAY_SIZE (struct fetch_type const*) ;
 char* DEFAULT_FETCH_TYPE_STR ;
 struct fetch_type const* fetch_type_table ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,int ) ;
 scalar_t__ strict_strtoul (char const*,int ,unsigned long*) ;

__attribute__((used)) static const struct fetch_type *find_fetch_type(const char *type)
{
 int i;

 if (!type)
  type = DEFAULT_FETCH_TYPE_STR;


 if (*type == 'b') {
  unsigned long bs;
  type = strchr(type, '/');
  if (!type)
   goto fail;
  type++;
  if (strict_strtoul(type, 0, &bs))
   goto fail;
  switch (bs) {
  case 8:
   return find_fetch_type("u8");
  case 16:
   return find_fetch_type("u16");
  case 32:
   return find_fetch_type("u32");
  case 64:
   return find_fetch_type("u64");
  default:
   goto fail;
  }
 }

 for (i = 0; i < ARRAY_SIZE(fetch_type_table); i++)
  if (strcmp(type, fetch_type_table[i].name) == 0)
   return &fetch_type_table[i];
fail:
 return ((void*)0);
}
