
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strerror (int) ;

const char *
ctf_strerror(int err)
{
 return ((const char *) strerror(err));
}
