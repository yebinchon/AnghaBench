
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ECTF_BASE ;
 char** _ctf_errlist ;
 int _ctf_nerr ;
 char* ctf_strerror (int) ;

const char *
ctf_errmsg(int error)
{
 const char *str;

 if (error >= ECTF_BASE && (error - ECTF_BASE) < _ctf_nerr)
  str = _ctf_errlist[error - ECTF_BASE];
 else
  str = ctf_strerror(error);

 return (str ? str : "Unknown error");
}
