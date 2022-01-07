
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int grow_config (int) ;
 int len_config ;
 int memcpy (char*,char const*,int) ;
 char* str_config ;

__attribute__((used)) static void define_config(const char * name, int len)
{
 grow_config(len + 1);

 memcpy(str_config+len_config, name, len);
 len_config += len;
 str_config[len_config++] = '\n';
}
