
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hdsp {int dds_value; } ;


 int DDS_NUMERATOR ;
 int HDSP_freqReg ;
 int div_u64 (int,int) ;
 int hdsp_write (struct hdsp*,int ,int) ;
 int snd_BUG_ON (int) ;

__attribute__((used)) static void hdsp_set_dds_value(struct hdsp *hdsp, int rate)
{
 u64 n;

 if (rate >= 112000)
  rate /= 4;
 else if (rate >= 56000)
  rate /= 2;

 n = DDS_NUMERATOR;
 n = div_u64(n, rate);

 snd_BUG_ON(n >> 32);


 hdsp->dds_value = n;
 hdsp_write(hdsp, HDSP_freqReg, hdsp->dds_value);
}
