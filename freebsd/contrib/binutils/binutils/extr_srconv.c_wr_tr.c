
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int b ;


 int file ;
 int fwrite (char*,int,int,int ) ;

__attribute__((used)) static void
wr_tr (void)
{


  static char b[] =
    {
      0xff,
      0x03,
      0xfd,
    };
  fwrite (b, 1, sizeof (b), file);
}
