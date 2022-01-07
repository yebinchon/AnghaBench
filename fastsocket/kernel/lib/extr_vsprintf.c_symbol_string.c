
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printf_spec {int field_width; int flags; int base; } ;


 int KSYM_SYMBOL_LEN ;
 int SMALL ;
 int SPECIAL ;
 int ZEROPAD ;
 int kallsyms_lookup (unsigned long,int *,int *,int *,char*) ;
 char* number (char*,char*,unsigned long,struct printf_spec) ;
 int sprint_symbol (char*,unsigned long) ;
 char* string (char*,char*,char*,struct printf_spec) ;

__attribute__((used)) static char *symbol_string(char *buf, char *end, void *ptr,
    struct printf_spec spec, char ext)
{
 unsigned long value = (unsigned long) ptr;
 spec.field_width = 2*sizeof(void *);
 spec.flags |= SPECIAL | SMALL | ZEROPAD;
 spec.base = 16;
 return number(buf, end, value, spec);

}
