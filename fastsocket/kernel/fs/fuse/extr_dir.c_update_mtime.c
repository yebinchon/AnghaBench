
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ATTR_FILE ;
 unsigned int ATTR_MTIME_SET ;
 unsigned int ATTR_OPEN ;
 unsigned int ATTR_SIZE ;

__attribute__((used)) static bool update_mtime(unsigned ivalid)
{

 if (ivalid & ATTR_MTIME_SET)
  return 1;


 if ((ivalid & ATTR_SIZE) && (ivalid & (ATTR_OPEN | ATTR_FILE)))
  return 0;


 return 1;
}
