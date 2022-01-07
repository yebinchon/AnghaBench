
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_4__ {char const* cts_strs; scalar_t__ cts_len; } ;
typedef TYPE_1__ ctf_strs_t ;
struct TYPE_5__ {TYPE_1__* ctf_str; } ;
typedef TYPE_2__ ctf_file_t ;


 int CTF_NAME_OFFSET (int ) ;
 size_t CTF_NAME_STID (int ) ;

const char *
ctf_strraw(ctf_file_t *fp, uint_t name)
{
 ctf_strs_t *ctsp = &fp->ctf_str[CTF_NAME_STID(name)];

 if (ctsp->cts_strs != ((void*)0) && CTF_NAME_OFFSET(name) < ctsp->cts_len)
  return (ctsp->cts_strs + CTF_NAME_OFFSET(name));


 return (((void*)0));
}
