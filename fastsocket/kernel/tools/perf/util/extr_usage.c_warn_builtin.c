
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int report (char*,char const*,int ) ;

__attribute__((used)) static void warn_builtin(const char *warn, va_list params)
{
 report(" Warning: ", warn, params);
}
