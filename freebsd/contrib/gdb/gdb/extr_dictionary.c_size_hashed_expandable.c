
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dictionary {int dummy; } ;


 int DICT_HASHED_EXPANDABLE_NSYMS (struct dictionary const*) ;

__attribute__((used)) static int
size_hashed_expandable (const struct dictionary *dict)
{
  return DICT_HASHED_EXPANDABLE_NSYMS (dict);
}
