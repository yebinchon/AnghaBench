
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ctf_file_t ;



ctf_file_t *
ctf_set_open_errno(int *errp, int error)
{
 if (errp != ((void*)0))
  *errp = error;
 return (((void*)0));
}
