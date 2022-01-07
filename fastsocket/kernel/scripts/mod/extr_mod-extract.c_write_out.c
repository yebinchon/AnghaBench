
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int csum ;
 int exit (int) ;
 size_t fwrite (void const*,int,size_t,int ) ;
 int outfd ;
 int perror (char*) ;
 int xcsum ;

__attribute__((used)) static void write_out(const void *data, size_t size)
{
 const uint8_t *p = data;
 size_t loop;

 for (loop = 0; loop < size; loop++) {
  csum += p[loop];
  xcsum += p[loop];
 }

 if (fwrite(data, 1, size, outfd) != size) {
  perror("write");
  exit(1);
 }
}
