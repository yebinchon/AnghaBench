
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int utilfdt_read_err_len (char const*,char**,int *) ;

int utilfdt_read_err(const char *filename, char **buffp)
{
 off_t len;
 return utilfdt_read_err_len(filename, buffp, &len);
}
