
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTF_VERSION ;
 int EINVAL ;
 int ENOTSUP ;
 int _libctf_version ;
 int ctf_dprintf (char*,int) ;
 int errno ;

int
ctf_version(int version)
{
 if (version < 0) {
  errno = EINVAL;
  return (-1);
 }

 if (version > 0) {
  if (version > CTF_VERSION) {
   errno = ENOTSUP;
   return (-1);
  }
  ctf_dprintf("ctf_version: client using version %d\n", version);
  _libctf_version = version;
 }

 return (_libctf_version);
}
