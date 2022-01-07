
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,int) ;
 int output_file ;

__attribute__((used)) static void
output_int(int value)
{
    fprintf(output_file, "%5d,", value);
}
