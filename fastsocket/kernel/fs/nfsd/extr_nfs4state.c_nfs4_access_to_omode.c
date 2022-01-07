
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BUG () ;



 int O_RDONLY ;
 int O_RDWR ;
 int O_WRONLY ;

__attribute__((used)) static int nfs4_access_to_omode(u32 access)
{
 switch (access & 130) {
 case 129:
  return O_RDONLY;
 case 128:
  return O_WRONLY;
 case 130:
  return O_RDWR;
 }
 BUG();
}
