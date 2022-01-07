
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 char* utilfdt_read_len (char const*,int *) ;

char *utilfdt_read(const char *filename)
{
 off_t len;
 return utilfdt_read_len(filename, &len);
}
