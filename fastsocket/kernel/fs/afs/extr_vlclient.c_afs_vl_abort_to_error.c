
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 int EACCES ;
 int EBADRQC ;
 int EBUSY ;
 int EEXIST ;
 int EFBIG ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEDIUM ;
 int EREMOTEIO ;
 int _enter (char*,int) ;
 int afs_abort_to_error (int) ;

__attribute__((used)) static int afs_vl_abort_to_error(u32 abort_code)
{
 _enter("%u", abort_code);

 switch (abort_code) {
 case 138: return -EEXIST;
 case 137: return -EREMOTEIO;
 case 136: return -EEXIST;
 case 144: return -EREMOTEIO;
 case 135: return -ENOMEDIUM;
 case 142: return -ENOMEDIUM;
 case 141: return -ENOMEDIUM;
 case 153: return -EINVAL;
 case 154: return -EINVAL;
 case 145: return -EINVAL;
 case 149: return -EINVAL;
 case 152: return -EINVAL;
 case 131: return -EFBIG;
 case 133: return -ENOENT;
 case 143: return -EEXIST;
 case 129: return -ENOENT;
 case 151: return -EINVAL;
 case 128: return -EINVAL;
 case 155: return -EINVAL;
 case 147: return -EINVAL;
 case 139: return -EINVAL;
 case 140: return -EBUSY;
 case 146: return -EBADRQC;
 case 150: return -EINVAL;
 case 130: return -EREMOTEIO;
 case 148: return -EINVAL;
 case 132: return -EACCES;
 case 134: return -EREMOTEIO;
 default:
  return afs_abort_to_error(abort_code);
 }
}
