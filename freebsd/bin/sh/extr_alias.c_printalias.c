
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alias {int val; int name; } ;


 int out1c (char) ;
 int out1fmt (char*,int ) ;
 int out1qstr (int ) ;

__attribute__((used)) static void
printalias(const struct alias *a)
{
 out1fmt("%s=", a->name);
 out1qstr(a->val);
 out1c('\n');
}
