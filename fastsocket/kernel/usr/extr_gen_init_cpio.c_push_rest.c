
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char const*,int ) ;
 scalar_t__ offset ;
 int putchar (int ) ;
 int stdout ;
 int strlen (char const*) ;

__attribute__((used)) static void push_rest(const char *name)
{
 unsigned int name_len = strlen(name) + 1;
 unsigned int tmp_ofs;

 fputs(name, stdout);
 putchar(0);
 offset += name_len;

 tmp_ofs = name_len + 110;
 while (tmp_ofs & 3) {
  putchar(0);
  offset++;
  tmp_ofs++;
 }
}
