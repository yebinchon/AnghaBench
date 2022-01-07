
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* name; } ;
struct TYPE_6__ {char* name; int files; } ;
typedef TYPE_1__ Path ;
typedef int Lst ;
typedef int Hash_Search ;
typedef TYPE_2__ Hash_Entry ;
typedef int Boolean ;


 TYPE_2__* Hash_EnumFirst (int *,int *) ;
 TYPE_2__* Hash_EnumNext (int *) ;
 int Lst_AtEnd (int ,int ) ;
 int STR_ADDSLASH ;
 scalar_t__ Str_Match (char*,char const*) ;
 int bmake_strdup (char*) ;
 int str_concat (char*,char*,int ) ;

__attribute__((used)) static int
DirMatchFiles(const char *pattern, Path *p, Lst expansions)
{
    Hash_Search search;
    Hash_Entry *entry;
    Boolean isDot;

    isDot = (*p->name == '.' && p->name[1] == '\0');

    for (entry = Hash_EnumFirst(&p->files, &search);
  entry != ((void*)0);
  entry = Hash_EnumNext(&search))
    {






 if (Str_Match(entry->name, pattern) &&
     ((entry->name[0] != '.') ||
      (pattern[0] == '.')))
 {
     (void)Lst_AtEnd(expansions,
       (isDot ? bmake_strdup(entry->name) :
        str_concat(p->name, entry->name,
     STR_ADDSLASH)));
 }
    }
    return (0);
}
