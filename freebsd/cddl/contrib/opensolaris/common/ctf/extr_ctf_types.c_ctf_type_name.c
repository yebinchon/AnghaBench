
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;


 size_t ctf_type_qlname (int *,int ,char*,size_t,int *) ;

char *
ctf_type_name(ctf_file_t *fp, ctf_id_t type, char *buf, size_t len)
{
 ssize_t rv = ctf_type_qlname(fp, type, buf, len, ((void*)0));
 return (rv >= 0 && rv < len ? buf : ((void*)0));
}
