
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,unsigned char) ;
 int out ;
 int write_hex_cnt ;

__attribute__((used)) static void write_hex(unsigned char byte)
{
    if (write_hex_cnt % 12)
 fprintf(out, ", 0x%02x", byte);
    else if (write_hex_cnt)
 fprintf(out, ",\n\t0x%02x", byte);
    else
 fprintf(out, "\t0x%02x", byte);
    write_hex_cnt++;
}
