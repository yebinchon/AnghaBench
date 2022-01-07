
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ustr {int u_len; int u_name; int u_cmpID; } ;
typedef int dstring ;


 int memcpy (int ,int *,int) ;
 int memset (struct ustr*,int ,int) ;

__attribute__((used)) static int udf_build_ustr_exact(struct ustr *dest, dstring *ptr, int exactsize)
{
 if ((!dest) || (!ptr) || (!exactsize))
  return -1;

 memset(dest, 0, sizeof(struct ustr));
 dest->u_cmpID = ptr[0];
 dest->u_len = exactsize - 1;
 memcpy(dest->u_name, ptr + 1, exactsize - 1);

 return 0;
}
