
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dictionary {int dummy; } ;


 int DICT_LINEAR_NSYMS (struct dictionary const*) ;

__attribute__((used)) static int
size_linear (const struct dictionary *dict)
{
  return DICT_LINEAR_NSYMS (dict);
}
