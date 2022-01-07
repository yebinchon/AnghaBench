
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HEXDIR_LEN ;
 scalar_t__ memcmp (char const*,char const*,int ) ;

__attribute__((used)) static int same_name(const char *n1, const char *n2)
{
 return 0 == memcmp(n1, n2, HEXDIR_LEN);
}
