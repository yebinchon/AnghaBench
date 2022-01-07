
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_gen_spec {scalar_t__ aamix_mode; int have_aamix_ctl; } ;



__attribute__((used)) static bool aamix_default(struct hda_gen_spec *spec)
{
 return !spec->have_aamix_ctl || spec->aamix_mode;
}
