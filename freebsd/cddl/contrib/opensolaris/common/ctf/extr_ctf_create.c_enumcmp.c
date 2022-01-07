
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctb_type; int ctb_file; } ;
typedef TYPE_1__ ctf_bundle_t ;


 scalar_t__ CTF_ERR ;
 scalar_t__ ctf_enum_value (int ,int ,char const*,int*) ;

__attribute__((used)) static int
enumcmp(const char *name, int value, void *arg)
{
 ctf_bundle_t *ctb = arg;
 int bvalue;

 return (ctf_enum_value(ctb->ctb_file, ctb->ctb_type,
     name, &bvalue) == CTF_ERR || value != bvalue);
}
