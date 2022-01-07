
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int use_midi_tasklet; } ;



__attribute__((used)) static int hdsp_set_use_midi_tasklet(struct hdsp *hdsp, int use_tasklet)
{
 if (use_tasklet)
  hdsp->use_midi_tasklet = 1;
 else
  hdsp->use_midi_tasklet = 0;
 return 0;
}
