
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;


 int _ (char*) ;
 int as_fatal (int ,char const*,char const*) ;
 char* hash_jam (int ,char const*,char*) ;
 int tag_hash ;

__attribute__((used)) static void
tag_insert (const char *name, symbolS *symbolP)
{
  const char *error_string;

  if ((error_string = hash_jam (tag_hash, name, (char *) symbolP)))
    as_fatal (_("Inserting \"%s\" into structure table failed: %s"),
       name, error_string);
}
