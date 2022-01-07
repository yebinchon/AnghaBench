
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CODA_CONTROL ;
 size_t CODA_CONTROLLEN ;
 scalar_t__ strncmp (char const*,int ,size_t) ;

int coda_iscontrol(const char *name, size_t length)
{
 return ((CODA_CONTROLLEN == length) &&
                (strncmp(name, CODA_CONTROL, CODA_CONTROLLEN) == 0));
}
