
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int dummy; } ;


 int HDSP_midiStatusIn0 ;
 int HDSP_midiStatusIn1 ;
 int hdsp_read (struct hdsp*,int ) ;

__attribute__((used)) static int snd_hdsp_midi_input_available (struct hdsp *hdsp, int id)
{
 if (id)
  return (hdsp_read(hdsp, HDSP_midiStatusIn1) & 0xff);
 else
  return (hdsp_read(hdsp, HDSP_midiStatusIn0) & 0xff);
}
