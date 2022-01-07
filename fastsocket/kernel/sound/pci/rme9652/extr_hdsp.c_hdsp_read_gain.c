
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int* mixer_matrix; } ;


 unsigned int HDSP_MATRIX_MIXER_SIZE ;

__attribute__((used)) static int hdsp_read_gain (struct hdsp *hdsp, unsigned int addr)
{
 if (addr >= HDSP_MATRIX_MIXER_SIZE)
  return 0;

 return hdsp->mixer_matrix[addr];
}
