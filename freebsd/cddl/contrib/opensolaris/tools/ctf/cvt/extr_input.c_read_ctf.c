
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int read_cb_f ;


 int read_ctf_common (char*,char*,int *,void*,int) ;

int
read_ctf(char **files, int n, char *label, read_cb_f *func, void *private,
    int require_ctf)
{
 int found;
 int i, rc;

 for (i = 0, found = 0; i < n; i++) {
  if ((rc = read_ctf_common(files[i], label, func,
      private, require_ctf)) < 0)
   return (rc);
  found += rc;
 }

 return (found);
}
