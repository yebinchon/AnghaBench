
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EACCES ;
 int EBUSY ;
 int EDEADLK ;
 int EDOM ;
 int EDQUOT ;
 int EEXIST ;
 int EFBIG ;
 int EINVAL ;
 int EIO ;
 int EISDIR ;
 int EKEYEXPIRED ;
 int EKEYREJECTED ;
 int EMLINK ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int ENOLCK ;
 int ENOMEDIUM ;
 int ENOSPC ;
 int ENOTDIR ;
 int ENOTEMPTY ;
 int ENXIO ;
 int EPROTO ;
 int ERANGE ;
 int EREMOTEIO ;
 int EROFS ;
 int EWOULDBLOCK ;
 int EXDEV ;
int afs_abort_to_error(u32 abort_code)
{
 switch (abort_code) {
 case 13: return -EACCES;
 case 27: return -EFBIG;
 case 30: return -EROFS;
 case 129: return -EIO;
 case 134: return -ENOENT;
 case 133: return -ENOMEDIUM;
 case 128: return -EEXIST;
 case 135: return -EIO;
 case 132: return -ENOENT;
 case 131: return -EEXIST;
 case 137: return -ENOSPC;
 case 130: return -EDQUOT;
 case 138: return -EBUSY;
 case 136: return -ENXIO;
 case 0x2f6df0a: return -EWOULDBLOCK;
 case 0x2f6df0c: return -EACCES;
 case 0x2f6df0f: return -EBUSY;
 case 0x2f6df10: return -EEXIST;
 case 0x2f6df11: return -EXDEV;
 case 0x2f6df13: return -ENOTDIR;
 case 0x2f6df14: return -EISDIR;
 case 0x2f6df15: return -EINVAL;
 case 0x2f6df1a: return -EFBIG;
 case 0x2f6df1b: return -ENOSPC;
 case 0x2f6df1d: return -EROFS;
 case 0x2f6df1e: return -EMLINK;
 case 0x2f6df20: return -EDOM;
 case 0x2f6df21: return -ERANGE;
 case 0x2f6df22: return -EDEADLK;
 case 0x2f6df23: return -ENAMETOOLONG;
 case 0x2f6df24: return -ENOLCK;
 case 0x2f6df26: return -ENOTEMPTY;
 case 0x2f6df78: return -EDQUOT;

 case 146: return -EPROTO;
 case 142: return -EPROTO;
 case 145: return -EKEYREJECTED;
 case 140: return -EKEYREJECTED;
 case 143: return -EPROTO;
 case 144: return -EKEYREJECTED;
 case 151: return -EKEYREJECTED;
 case 150: return -EKEYREJECTED;
 case 139: return -EKEYREJECTED;
 case 148: return -EKEYEXPIRED;
 case 141: return -EKEYREJECTED;
 case 149: return -EKEYREJECTED;
 case 147: return -EKEYREJECTED;

 default: return -EREMOTEIO;
 }
}
