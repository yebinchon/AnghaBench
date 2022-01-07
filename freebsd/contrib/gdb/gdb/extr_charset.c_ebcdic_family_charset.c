
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charset {int dummy; } ;


 int ebcdic_print_literally ;
 int ebcdic_to_control ;
 struct charset* simple_charset (char const*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static struct charset *
ebcdic_family_charset (const char *name)
{
  return simple_charset (name, 0,
                         ebcdic_print_literally, 0,
                         ebcdic_to_control, 0);
}
