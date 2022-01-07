
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int ctf_file_t ;


 char* ctf_strraw (int *,int ) ;

const char *
ctf_strptr(ctf_file_t *fp, uint_t name)
{
 const char *s = ctf_strraw(fp, name);
 return (s != ((void*)0) ? s : "(?)");
}
