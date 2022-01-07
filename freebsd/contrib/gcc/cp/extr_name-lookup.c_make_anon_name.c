
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 char* ANON_AGGRNAME_FORMAT ;
 int anon_cnt ;
 int get_identifier (char*) ;
 int sprintf (char*,char*,int ) ;

tree
make_anon_name (void)
{
  char buf[32];

  sprintf (buf, ANON_AGGRNAME_FORMAT, anon_cnt++);
  return get_identifier (buf);
}
