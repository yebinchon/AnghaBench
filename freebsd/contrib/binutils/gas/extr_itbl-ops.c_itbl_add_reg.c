
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itbl_entry {int dummy; } ;


 struct itbl_entry* alloc_entry (int ,int ,char*,unsigned long) ;
 int get_processor (int) ;
 int get_type (int) ;

struct itbl_entry *
itbl_add_reg (int yyprocessor, int yytype, char *regname,
       int regnum)
{
  return alloc_entry (get_processor (yyprocessor), get_type (yytype), regname,
        (unsigned long) regnum);
}
