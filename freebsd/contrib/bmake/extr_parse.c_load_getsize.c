
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; } ;
typedef int ReturnStatus ;


 int FAILURE ;
 int SUCCESS ;
 int S_ISREG (int ) ;
 scalar_t__ fstat (int,struct stat*) ;

__attribute__((used)) static ReturnStatus
load_getsize(int fd, size_t *ret)
{
 struct stat st;

 if (fstat(fd, &st) < 0) {
  return FAILURE;
 }

 if (!S_ISREG(st.st_mode)) {
  return FAILURE;
 }
 if (st.st_size < 0 || st.st_size > 0x7fffffff) {
  return FAILURE;
 }

 *ret = (size_t) st.st_size;
 return SUCCESS;
}
