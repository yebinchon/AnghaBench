
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;
typedef int ctf_encoding_t ;


 int CTF_K_INTEGER ;
 int ctf_add_encoded (int *,int ,char const*,int const*,int ) ;

ctf_id_t
ctf_add_integer(ctf_file_t *fp, uint_t flag,
    const char *name, const ctf_encoding_t *ep)
{
 return (ctf_add_encoded(fp, flag, name, ep, CTF_K_INTEGER));
}
