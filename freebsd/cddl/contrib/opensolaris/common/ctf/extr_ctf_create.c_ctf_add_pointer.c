
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;


 int CTF_K_POINTER ;
 int ctf_add_reftype (int *,int ,int ,int ) ;

ctf_id_t
ctf_add_pointer(ctf_file_t *fp, uint_t flag, ctf_id_t ref)
{
 return (ctf_add_reftype(fp, flag, ref, CTF_K_POINTER));
}
