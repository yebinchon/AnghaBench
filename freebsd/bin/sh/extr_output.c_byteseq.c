
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output {int dummy; } ;


 int outbin (char*,int,struct output*) ;

__attribute__((used)) static void
byteseq(int ch, struct output *file)
{
 char seq[4];

 seq[0] = '\\';
 seq[1] = (ch >> 6 & 0x3) + '0';
 seq[2] = (ch >> 3 & 0x7) + '0';
 seq[3] = (ch & 0x7) + '0';
 outbin(seq, 4, file);
}
