
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ ssize_t ;


 int EXIT_FAILURE ;
 int _LINE_BUFSZ ;
 int err (int ,char*) ;
 scalar_t__ write (int,char*,int) ;
 int write_num (char*,int*,int const,int,int*) ;

__attribute__((used)) static void
srec_write(int ofd, char type, uint64_t addr, const void *buf, size_t sz)
{
 char line[_LINE_BUFSZ];
 const uint8_t *p, *pe;
 int len, addr_sz, checksum;

 if (type == '0' || type == '1' || type == '5' || type == '9')
  addr_sz = 2;
 else if (type == '2' || type == '8')
  addr_sz = 3;
 else
  addr_sz = 4;

 checksum = 0;
 line[0] = 'S';
 line[1] = type;
 len = 2;
 write_num(line, &len, addr_sz + sz + 1, 1, &checksum);
 write_num(line, &len, addr, addr_sz, &checksum);
 for (p = buf, pe = p + sz; p < pe; p++)
  write_num(line, &len, *p, 1, &checksum);
 write_num(line, &len, ~checksum & 0xFF, 1, ((void*)0));
 line[len++] = '\r';
 line[len++] = '\n';
 if (write(ofd, line, len) != (ssize_t) len)
  err(EXIT_FAILURE, "write failed");
}
