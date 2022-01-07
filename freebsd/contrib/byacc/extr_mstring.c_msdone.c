
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mstring {char* base; } ;


 int free (struct mstring*) ;
 int mputc (struct mstring*,int ) ;

char *
msdone(struct mstring *s)
{
    char *r = 0;
    if (s)
    {
 mputc(s, 0);
 r = s->base;
 free(s);
    }
    return r;
}
