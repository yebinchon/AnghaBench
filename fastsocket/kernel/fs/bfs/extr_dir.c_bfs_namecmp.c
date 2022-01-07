
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BFS_NAMELEN ;
 int memcmp (unsigned char const*,char const*,int) ;

__attribute__((used)) static inline int bfs_namecmp(int len, const unsigned char *name,
       const char *buffer)
{
 if ((len < BFS_NAMELEN) && buffer[len])
  return 0;
 return !memcmp(name, buffer, len);
}
