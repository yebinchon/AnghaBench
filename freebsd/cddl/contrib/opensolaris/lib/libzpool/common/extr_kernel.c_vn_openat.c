
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;


 int ASSERT (int) ;
 int UMEM_NOFAIL ;
 int * rootdir ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ strlen (char*) ;
 char* umem_alloc (scalar_t__,int ) ;
 int umem_free (char*,scalar_t__) ;
 int vn_open (char*,int,int,int,int **,int,int) ;

int
vn_openat(char *path, int x1, int flags, int mode, vnode_t **vpp, int x2,
    int x3, vnode_t *startvp, int fd)
{
 char *realpath = umem_alloc(strlen(path) + 2, UMEM_NOFAIL);
 int ret;

 ASSERT(startvp == rootdir);
 (void) sprintf(realpath, "/%s", path);


 ret = vn_open(realpath, x1, flags, mode, vpp, x2, x3);

 umem_free(realpath, strlen(path) + 2);

 return (ret);
}
