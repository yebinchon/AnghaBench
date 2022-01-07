
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * ends_with (char const*,char*) ;

__attribute__((used)) static bool is_top_script(const char *script_path)
{
 return ends_with(script_path, "top") == ((void*)0) ? 0 : 1;
}
