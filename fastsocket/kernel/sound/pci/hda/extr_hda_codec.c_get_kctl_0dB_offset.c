
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* p; int (* c ) (struct snd_kcontrol*,int ,int,int*) ;} ;
struct snd_kcontrol {TYPE_1__ tlv; TYPE_2__* vd; } ;
typedef int mm_segment_t ;
typedef int _tlv ;
struct TYPE_4__ {int access; } ;


 int SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK ;
 int SNDRV_CTL_ELEM_ACCESS_TLV_READ ;
 int const SNDRV_CTL_TLVT_DB_SCALE ;
 int get_ds () ;
 int get_fs () ;
 int set_fs (int ) ;
 int stub1 (struct snd_kcontrol*,int ,int,int*) ;

__attribute__((used)) static int get_kctl_0dB_offset(struct snd_kcontrol *kctl)
{
 int _tlv[4];
 const int *tlv = ((void*)0);
 int val = -1;

 if (kctl->vd[0].access & SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK) {

  mm_segment_t fs = get_fs();
  set_fs(get_ds());
  if (!kctl->tlv.c(kctl, 0, sizeof(_tlv), _tlv))
   tlv = _tlv;
  set_fs(fs);
 } else if (kctl->vd[0].access & SNDRV_CTL_ELEM_ACCESS_TLV_READ)
  tlv = kctl->tlv.p;
 if (tlv && tlv[0] == SNDRV_CTL_TLVT_DB_SCALE)
  val = -tlv[2] / tlv[3];
 return val;
}
