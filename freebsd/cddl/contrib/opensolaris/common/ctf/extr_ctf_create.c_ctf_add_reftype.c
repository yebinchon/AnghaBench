
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ushort_t ;
typedef int uint_t ;
typedef scalar_t__ ctf_id_t ;
typedef int ctf_file_t ;
struct TYPE_4__ {scalar_t__ ctt_type; int ctt_info; } ;
struct TYPE_5__ {TYPE_1__ dtd_data; } ;
typedef TYPE_2__ ctf_dtdef_t ;


 scalar_t__ CTF_ERR ;
 scalar_t__ CTF_MAX_TYPE ;
 int CTF_TYPE_INFO (int ,int ,int ) ;
 int EINVAL ;
 scalar_t__ ctf_add_generic (int *,int ,int *,TYPE_2__**) ;
 int ctf_ref_inc (int *,scalar_t__) ;
 scalar_t__ ctf_set_errno (int *,int ) ;

__attribute__((used)) static ctf_id_t
ctf_add_reftype(ctf_file_t *fp, uint_t flag, ctf_id_t ref, uint_t kind)
{
 ctf_dtdef_t *dtd;
 ctf_id_t type;

 if (ref == CTF_ERR || ref < 0 || ref > CTF_MAX_TYPE)
  return (ctf_set_errno(fp, EINVAL));

 if ((type = ctf_add_generic(fp, flag, ((void*)0), &dtd)) == CTF_ERR)
  return (CTF_ERR);

 ctf_ref_inc(fp, ref);

 dtd->dtd_data.ctt_info = CTF_TYPE_INFO(kind, flag, 0);
 dtd->dtd_data.ctt_type = (ushort_t)ref;

 return (type);
}
