
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec_per_pin {int dummy; } ;
struct hdmi_spec_per_cvt {int dummy; } ;
struct hdmi_spec {int pcm_rec; int cvts; int pins; } ;
struct hda_pcm {int dummy; } ;


 int snd_array_init (int *,int,int) ;

__attribute__((used)) static void hdmi_array_init(struct hdmi_spec *spec, int nums)
{
 snd_array_init(&spec->pins, sizeof(struct hdmi_spec_per_pin), nums);
 snd_array_init(&spec->cvts, sizeof(struct hdmi_spec_per_cvt), nums);
 snd_array_init(&spec->pcm_rec, sizeof(struct hda_pcm), nums);
}
