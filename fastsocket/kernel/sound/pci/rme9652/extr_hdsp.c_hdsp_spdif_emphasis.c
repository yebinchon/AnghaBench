
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int control_register; } ;


 int HDSP_SPDIFEmphasis ;

__attribute__((used)) static int hdsp_spdif_emphasis(struct hdsp *hdsp)
{
 return (hdsp->control_register & HDSP_SPDIFEmphasis) ? 1 : 0;
}
