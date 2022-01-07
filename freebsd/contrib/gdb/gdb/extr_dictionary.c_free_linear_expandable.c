
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dictionary {int dummy; } ;


 struct dictionary* DICT_LINEAR_SYMS (struct dictionary*) ;
 int xfree (struct dictionary*) ;

__attribute__((used)) static void
free_linear_expandable (struct dictionary *dict)
{
  xfree (DICT_LINEAR_SYMS (dict));
  xfree (dict);
}
