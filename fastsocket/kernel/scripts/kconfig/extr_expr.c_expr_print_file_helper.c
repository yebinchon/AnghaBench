
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;


 int fwrite (char const*,int ,int,void*) ;
 int strlen (char const*) ;

__attribute__((used)) static void expr_print_file_helper(void *data, struct symbol *sym, const char *str)
{
 fwrite(str, strlen(str), 1, data);
}
