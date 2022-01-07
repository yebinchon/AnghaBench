
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 scalar_t__ IS_PRIVATE (struct inode*) ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static size_t security_list(struct inode *inode, char *list, size_t list_len,
       const char *name, size_t namelen)
{
 const size_t len = namelen + 1;

 if (IS_PRIVATE(inode))
  return 0;

 if (list && len <= list_len) {
  memcpy(list, name, namelen);
  list[namelen] = '\0';
 }

 return len;
}
