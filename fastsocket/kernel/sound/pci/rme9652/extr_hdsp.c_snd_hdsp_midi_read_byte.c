
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int dummy; } ;


 int HDSP_midiDataIn0 ;
 int HDSP_midiDataIn1 ;
 unsigned char hdsp_read (struct hdsp*,int ) ;

__attribute__((used)) static unsigned char snd_hdsp_midi_read_byte (struct hdsp *hdsp, int id)
{

 if (id)
  return hdsp_read(hdsp, HDSP_midiDataIn1);
 else
  return hdsp_read(hdsp, HDSP_midiDataIn0);
}
