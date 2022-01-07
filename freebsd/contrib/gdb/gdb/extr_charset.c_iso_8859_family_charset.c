
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charset {int dummy; } ;


 int iso_8859_print_literally ;
 int iso_8859_to_control ;
 struct charset* simple_charset (char const*,int,int ,int ,int ,int ) ;

__attribute__((used)) static struct charset *
iso_8859_family_charset (const char *name)
{
  return simple_charset (name, 1,
                         iso_8859_print_literally, 0,
                         iso_8859_to_control, 0);
}
