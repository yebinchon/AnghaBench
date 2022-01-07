
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ctf_membinfo_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;


 int _ctf_member_info (int *,int ,char const*,int ,int *) ;

int
ctf_member_info(ctf_file_t *fp, ctf_id_t type, const char *name,
    ctf_membinfo_t *mip)
{

 return (_ctf_member_info(fp, type, name, 0, mip));
}
