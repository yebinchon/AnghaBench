
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* bmake_malloc (int) ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static char *
make_str(const char *ptr, int len)
{
 char *new_ptr;

 new_ptr = bmake_malloc(len + 1);
 memcpy(new_ptr, ptr, len);
 new_ptr[len] = 0;
 return new_ptr;
}
