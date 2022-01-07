
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MAX_JIFFY_OFFSET ;
 unsigned long jiffies ;
 unsigned int jiffies_to_msecs (unsigned long) ;

__attribute__((used)) static inline unsigned int elapsed_jiffies_msecs(unsigned long start)
{
 unsigned long end = jiffies;

 if (end >= start)
  return jiffies_to_msecs(end - start);

 return jiffies_to_msecs(end + (MAX_JIFFY_OFFSET - start) + 1);
}
