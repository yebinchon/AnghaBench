
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;


 int ctf_type_qlname (int *,int ,char*,size_t,int *) ;

ssize_t
ctf_type_lname(ctf_file_t *fp, ctf_id_t type, char *buf, size_t len)
{
 return (ctf_type_qlname(fp, type, buf, len, ((void*)0)));
}
