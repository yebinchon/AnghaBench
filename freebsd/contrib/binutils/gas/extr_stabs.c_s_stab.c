
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STAB_SECTION_NAME ;
 int STAB_STRING_SECTION_NAME ;
 int s_stab_generic (int,int ,int ) ;

void
s_stab (int what)
{
  s_stab_generic (what, STAB_SECTION_NAME, STAB_STRING_SECTION_NAME);
}
