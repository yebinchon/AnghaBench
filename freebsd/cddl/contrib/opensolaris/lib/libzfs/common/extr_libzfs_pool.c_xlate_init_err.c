
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EZFS_BADDEV ;
 int EZFS_INITIALIZING ;
 int EZFS_NODEVICE ;
 int EZFS_NO_INITIALIZE ;

__attribute__((used)) static int
xlate_init_err(int err)
{
 switch (err) {
 case 130:
  return (EZFS_NODEVICE);
 case 131:
 case 129:
  return (EZFS_BADDEV);
 case 132:
  return (EZFS_INITIALIZING);
 case 128:
  return (EZFS_NO_INITIALIZE);
 }
 return (err);
}
