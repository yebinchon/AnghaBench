
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DIR__READ ;
 int DIR__SEARCH ;
 int DIR__WRITE ;
 int FILE__APPEND ;
 int FILE__EXECUTE ;
 int FILE__READ ;
 int FILE__WRITE ;
 int MAY_APPEND ;
 int MAY_EXEC ;
 int MAY_READ ;
 int MAY_WRITE ;
 int S_IFDIR ;
 int S_IFMT ;

__attribute__((used)) static inline u32 file_mask_to_av(int mode, int mask)
{
 u32 av = 0;

 if ((mode & S_IFMT) != S_IFDIR) {
  if (mask & MAY_EXEC)
   av |= FILE__EXECUTE;
  if (mask & MAY_READ)
   av |= FILE__READ;

  if (mask & MAY_APPEND)
   av |= FILE__APPEND;
  else if (mask & MAY_WRITE)
   av |= FILE__WRITE;

 } else {
  if (mask & MAY_EXEC)
   av |= DIR__SEARCH;
  if (mask & MAY_WRITE)
   av |= DIR__WRITE;
  if (mask & MAY_READ)
   av |= DIR__READ;
 }

 return av;
}
