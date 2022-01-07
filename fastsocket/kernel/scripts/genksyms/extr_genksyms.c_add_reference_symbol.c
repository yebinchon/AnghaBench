
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct string_list {int dummy; } ;
typedef enum symbol_type { ____Placeholder_symbol_type } symbol_type ;


 struct symbol* __add_symbol (char const*,int,struct string_list*,int,int) ;

__attribute__((used)) static struct symbol *add_reference_symbol(const char *name, enum symbol_type type,
        struct string_list *defn, int is_extern)
{
 return __add_symbol(name, type, defn, is_extern, 1);
}
