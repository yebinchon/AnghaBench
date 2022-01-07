
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_size_type ;
typedef unsigned int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;


 int CHUNK ;
 int FALSE ;
 int TOHEX (char*,unsigned int) ;
 int TRUE ;
 size_t bfd_bwrite (char*,int ,int *) ;

__attribute__((used)) static bfd_boolean
ihex_write_record (bfd *abfd,
     size_t count,
     unsigned int addr,
     unsigned int type,
     bfd_byte *data)
{
  static const char digs[] = "0123456789ABCDEF";
  char buf[9 + CHUNK * 2 + 4];
  char *p;
  unsigned int chksum;
  unsigned int i;
  size_t total;




  buf[0] = ':';
  ((buf + 1)[0] = digs[((count) >> 4) & 0xf], (buf + 1)[1] = digs[(count) & 0xf]);
  ((buf + 3)[0] = digs[(((addr >> 8) & 0xff) >> 4) & 0xf], (buf + 3)[1] = digs[((addr >> 8) & 0xff) & 0xf]);
  ((buf + 5)[0] = digs[((addr & 0xff) >> 4) & 0xf], (buf + 5)[1] = digs[(addr & 0xff) & 0xf]);
  ((buf + 7)[0] = digs[((type) >> 4) & 0xf], (buf + 7)[1] = digs[(type) & 0xf]);

  chksum = count + addr + (addr >> 8) + type;

  for (i = 0, p = buf + 9; i < count; i++, p += 2, data++)
    {
      ((p)[0] = digs[((*data) >> 4) & 0xf], (p)[1] = digs[(*data) & 0xf]);
      chksum += *data;
    }

  ((p)[0] = digs[(((- chksum) & 0xff) >> 4) & 0xf], (p)[1] = digs[((- chksum) & 0xff) & 0xf]);
  p[2] = '\r';
  p[3] = '\n';

  total = 9 + count * 2 + 4;
  if (bfd_bwrite (buf, (bfd_size_type) total, abfd) != total)
    return FALSE;

  return TRUE;
}
