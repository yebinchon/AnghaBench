
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int ino_t ;
typedef int dev_t ;


 int BUG () ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int htonl (int) ;
 int ino_t_to_u32 (int ) ;
 int memcpy (int*,unsigned char*,int) ;
 int new_encode_dev (int ) ;

__attribute__((used)) static inline void mk_fsid(int vers, u32 *fsidv, dev_t dev, ino_t ino,
      u32 fsid, unsigned char *uuid)
{
 u32 *up;
 switch(vers) {
 case 135:
  fsidv[0] = htonl((MAJOR(dev)<<16) |
     MINOR(dev));
  fsidv[1] = ino_t_to_u32(ino);
  break;
 case 132:
  fsidv[0] = fsid;
  break;
 case 133:
  fsidv[0] = htonl(MAJOR(dev));
  fsidv[1] = htonl(MINOR(dev));
  fsidv[2] = ino_t_to_u32(ino);
  break;

 case 134:
  fsidv[0] = new_encode_dev(dev);
  fsidv[1] = ino_t_to_u32(ino);
  break;

 case 129:

  up = (u32*)uuid;
  fsidv[0] = ino_t_to_u32(ino);
  fsidv[1] = up[0] ^ up[1] ^ up[2] ^ up[3];
  break;

 case 128:

  up = (u32*)uuid;
  fsidv[0] = up[0] ^ up[2];
  fsidv[1] = up[1] ^ up[3];
  break;

 case 131:

  memcpy(fsidv, uuid, 16);
  break;

 case 130:

  *(u64*)fsidv = (u64)ino;
  memcpy(fsidv+2, uuid, 16);
  break;
 default: BUG();
 }
}
