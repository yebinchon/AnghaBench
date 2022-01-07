
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int DEPRECATED_STREQN (char*,char const*,int) ;
 unsigned int TARGET_CHAR_BIT ;
 char* TYPE_FIELD_NAME (struct type*,int) ;
 unsigned int atoi (char const*) ;
 scalar_t__ isdigit (char const) ;
 int strlen (char const*) ;

__attribute__((used)) static unsigned int
field_alignment (struct type *type, int f)
{
  const char *name = TYPE_FIELD_NAME (type, f);
  int len = (name == ((void*)0)) ? 0 : strlen (name);
  int align_offset;

  if (len < 8 || !isdigit (name[len - 1]))
    return TARGET_CHAR_BIT;

  if (isdigit (name[len - 2]))
    align_offset = len - 2;
  else
    align_offset = len - 1;

  if (align_offset < 7 || !DEPRECATED_STREQN ("___XV", name + align_offset - 6, 5))
    return TARGET_CHAR_BIT;

  return atoi (name + align_offset) * TARGET_CHAR_BIT;
}
