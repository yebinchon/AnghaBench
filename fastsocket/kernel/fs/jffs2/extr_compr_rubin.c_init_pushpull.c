
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pushpull {char* buf; unsigned int buflen; unsigned int ofs; unsigned int reserve; } ;



__attribute__((used)) static inline void init_pushpull(struct pushpull *pp, char *buf,
     unsigned buflen, unsigned ofs,
     unsigned reserve)
{
 pp->buf = buf;
 pp->buflen = buflen;
 pp->ofs = ofs;
 pp->reserve = reserve;
}
