
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_entry {int type; int number; } ;


 char TOLOWER (char) ;
 char TOUPPER (char) ;
 int _ (char*) ;
 char* alloca (size_t) ;
 int arm_reg_hsh ;
 int as_warn (int ,char*) ;
 struct reg_entry* hash_find (int ,char*) ;
 int insert_reg_alias (char*,int ,int ) ;
 int memcpy (char*,char*,size_t) ;
 char* original_case_string ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,char*,size_t) ;

__attribute__((used)) static int
create_register_alias (char * newname, char *p)
{
  struct reg_entry *old;
  char *oldname, *nbuf;
  size_t nlen;



  oldname = p;
  if (strncmp (oldname, " .req ", 6) != 0)
    return 0;

  oldname += 6;
  if (*oldname == '\0')
    return 0;

  old = hash_find (arm_reg_hsh, oldname);
  if (!old)
    {
      as_warn (_("unknown register '%s' -- .req ignored"), oldname);
      return 1;
    }







  newname = original_case_string;
  nlen = strlen (newname);


  nbuf = alloca (nlen + 1);
  memcpy (nbuf, newname, nlen);
  nbuf[nlen] = '\0';




  insert_reg_alias (nbuf, old->number, old->type);

  for (p = nbuf; *p; p++)
    *p = TOUPPER (*p);

  if (strncmp (nbuf, newname, nlen))
    insert_reg_alias (nbuf, old->number, old->type);

  for (p = nbuf; *p; p++)
    *p = TOLOWER (*p);

  if (strncmp (nbuf, newname, nlen))
    insert_reg_alias (nbuf, old->number, old->type);

  return 1;
}
