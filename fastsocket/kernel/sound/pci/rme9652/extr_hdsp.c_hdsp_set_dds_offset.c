
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int system_sample_rate; } ;


 int hdsp_set_dds_value (struct hdsp*,int) ;

__attribute__((used)) static int hdsp_set_dds_offset(struct hdsp *hdsp, int offset_hz)
{
 int rate = hdsp->system_sample_rate + offset_hz;
 hdsp_set_dds_value(hdsp, rate);
 return 0;
}
