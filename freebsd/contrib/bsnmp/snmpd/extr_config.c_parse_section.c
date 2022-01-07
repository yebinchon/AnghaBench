
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lmodule {char* section; } ;


 scalar_t__ TOK_STR ;
 int gettoken () ;
 int ignore ;
 int report (char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int strval ;
 scalar_t__ token ;

__attribute__((used)) static void
parse_section(const struct lmodule *mod)
{
 if (token != TOK_STR)
  report("expecting section name");

 if (strcmp(strval, "snmpd") == 0) {
  if (mod != ((void*)0))

   ignore = 1;
  else

   ignore = 0;
 } else {
  if (mod == ((void*)0)) {

   ignore = 1;
  } else {

   ignore = (strcmp(strval, mod->section) != 0);
  }
 }
 gettoken();
}
