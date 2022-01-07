
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DBGP_EPADDR (unsigned int,unsigned int) ;
 int DBGP_ERR_BAD ;
 int DBGP_MAX_PACKET ;
 int dbgp_out (int ,char const*,int) ;
 int udelay (int) ;

__attribute__((used)) static int dbgp_bulk_write(unsigned devnum, unsigned endpoint,
    const char *bytes, int size)
{
 int ret;
 int loops = 5;
 u32 addr;
 if (size > DBGP_MAX_PACKET)
  return -1;

 addr = DBGP_EPADDR(devnum, endpoint);
try_again:
 if (loops--) {
  ret = dbgp_out(addr, bytes, size);
  if (ret == -DBGP_ERR_BAD) {
   int try_loops = 3;
   do {


    if (dbgp_out(addr, "12345678", 8) >= 0) {
     udelay(2);
     goto try_again;
    }
   } while (try_loops--);
  }
 }

 return ret;
}
