
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regexp_t ;


 int form_regexp (int ) ;
 int irp ;
 int obstack_1grow (int *,char) ;
 char const* obstack_base (int *) ;

__attribute__((used)) static const char *
regexp_representation (regexp_t regexp)
{
  form_regexp (regexp);
  obstack_1grow (&irp, '\0');
  return obstack_base (&irp);
}
