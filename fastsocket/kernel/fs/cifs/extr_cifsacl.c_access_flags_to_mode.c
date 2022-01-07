
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int __u32 ;
typedef int __le32 ;


 int ACCESS_ALLOWED ;
 int ACCESS_DENIED ;
 int DBG2 ;
 int FILE_EXEC_RIGHTS ;
 int FILE_READ_RIGHTS ;
 int FILE_WRITE_RIGHTS ;
 int GENERIC_ALL ;
 int GENERIC_EXECUTE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int S_IRUGO ;
 int S_IRWXUGO ;
 int S_IWUGO ;
 int S_IXUGO ;
 int cERROR (int,char*,int) ;
 int cFYI (int ,char*,...) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void access_flags_to_mode(__le32 ace_flags, int type, umode_t *pmode,
     umode_t *pbits_to_set)
{
 __u32 flags = le32_to_cpu(ace_flags);
 if (type == ACCESS_DENIED) {
  if (flags & GENERIC_ALL)
   *pbits_to_set &= ~S_IRWXUGO;

  if ((flags & GENERIC_WRITE) ||
   ((flags & FILE_WRITE_RIGHTS) == FILE_WRITE_RIGHTS))
   *pbits_to_set &= ~S_IWUGO;
  if ((flags & GENERIC_READ) ||
   ((flags & FILE_READ_RIGHTS) == FILE_READ_RIGHTS))
   *pbits_to_set &= ~S_IRUGO;
  if ((flags & GENERIC_EXECUTE) ||
   ((flags & FILE_EXEC_RIGHTS) == FILE_EXEC_RIGHTS))
   *pbits_to_set &= ~S_IXUGO;
  return;
 } else if (type != ACCESS_ALLOWED) {
  cERROR(1, "unknown access control type %d", type);
  return;
 }


 if (flags & GENERIC_ALL) {
  *pmode |= (S_IRWXUGO & (*pbits_to_set));
  cFYI(DBG2, "all perms");
  return;
 }
 if ((flags & GENERIC_WRITE) ||
   ((flags & FILE_WRITE_RIGHTS) == FILE_WRITE_RIGHTS))
  *pmode |= (S_IWUGO & (*pbits_to_set));
 if ((flags & GENERIC_READ) ||
   ((flags & FILE_READ_RIGHTS) == FILE_READ_RIGHTS))
  *pmode |= (S_IRUGO & (*pbits_to_set));
 if ((flags & GENERIC_EXECUTE) ||
   ((flags & FILE_EXEC_RIGHTS) == FILE_EXEC_RIGHTS))
  *pmode |= (S_IXUGO & (*pbits_to_set));

 cFYI(DBG2, "access flags 0x%x mode now 0x%x", flags, *pmode);
 return;
}
