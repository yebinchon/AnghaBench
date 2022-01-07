
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long LOOKUP_DIRECTORY ;
 unsigned long LOOKUP_FOLLOW ;
 unsigned int O_DIRECTORY ;
 unsigned int O_NOFOLLOW ;

__attribute__((used)) static inline int lookup_flags(unsigned int f)
{
 unsigned long retval = LOOKUP_FOLLOW;

 if (f & O_NOFOLLOW)
  retval &= ~LOOKUP_FOLLOW;

 if (f & O_DIRECTORY)
  retval |= LOOKUP_DIRECTORY;

 return retval;
}
