
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int ERANGE ;
 int strcpy (char*,char const*) ;

__attribute__((used)) static int
list_one_attr(const char *name, const size_t len, void *data,
  size_t size, ssize_t *result)
{
 char *p = data + *result;

 *result += len;
 if (!size)
  return 0;
 if (*result > size)
  return -ERANGE;

 strcpy(p, name);
 return 0;
}
