
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int playback_buffer; } ;


 int HDSP_DMA_AREA_BYTES ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void hdsp_silence_playback(struct hdsp *hdsp)
{
 memset(hdsp->playback_buffer, 0, HDSP_DMA_AREA_BYTES);
}
