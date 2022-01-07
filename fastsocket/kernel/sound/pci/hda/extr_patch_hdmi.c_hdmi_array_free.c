
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec {int pcm_rec; int cvts; int pins; } ;


 int snd_array_free (int *) ;

__attribute__((used)) static void hdmi_array_free(struct hdmi_spec *spec)
{
 snd_array_free(&spec->pins);
 snd_array_free(&spec->cvts);
 snd_array_free(&spec->pcm_rec);
}
