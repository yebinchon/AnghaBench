
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ulong_t ;
struct TYPE_4__ {scalar_t__ ctm_offset; } ;
typedef TYPE_1__ ctf_membinfo_t ;
typedef int ctf_id_t ;
struct TYPE_5__ {int ctb_type; int ctb_file; } ;
typedef TYPE_2__ ctf_bundle_t ;


 scalar_t__ CTF_ERR ;
 scalar_t__ ctf_member_info (int ,int ,char const*,TYPE_1__*) ;

__attribute__((used)) static int
membcmp(const char *name, ctf_id_t type, ulong_t offset, void *arg)
{
 ctf_bundle_t *ctb = arg;
 ctf_membinfo_t ctm;

 return (ctf_member_info(ctb->ctb_file, ctb->ctb_type,
     name, &ctm) == CTF_ERR || ctm.ctm_offset != offset);
}
