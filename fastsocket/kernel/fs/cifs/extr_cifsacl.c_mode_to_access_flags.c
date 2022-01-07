
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int __u32 ;


 int DBG2 ;
 int SET_FILE_EXEC_RIGHTS ;
 int SET_FILE_READ_RIGHTS ;
 int SET_FILE_WRITE_RIGHTS ;
 int S_IRUGO ;
 int S_IWUGO ;
 int S_IXUGO ;
 int cFYI (int ,char*,int,int) ;

__attribute__((used)) static void mode_to_access_flags(umode_t mode, umode_t bits_to_use,
    __u32 *pace_flags)
{

 *pace_flags = 0x0;


 mode &= bits_to_use;




 if (mode & S_IRUGO)
  *pace_flags |= SET_FILE_READ_RIGHTS;
 if (mode & S_IWUGO)
  *pace_flags |= SET_FILE_WRITE_RIGHTS;
 if (mode & S_IXUGO)
  *pace_flags |= SET_FILE_EXEC_RIGHTS;

 cFYI(DBG2, "mode: 0x%x, access flags now 0x%x", mode, *pace_flags);
 return;
}
