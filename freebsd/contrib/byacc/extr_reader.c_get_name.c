
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bucket ;


 scalar_t__ IS_IDENT (int) ;
 int NUL ;
 int cache ;
 int cachec (int) ;
 scalar_t__ cinc ;
 int* cptr ;
 scalar_t__ is_reserved (int ) ;
 int * lookup (int ) ;
 int used_reserved (int ) ;

__attribute__((used)) static bucket *
get_name(void)
{
    int c;

    cinc = 0;
    for (c = *cptr; IS_IDENT(c); c = *++cptr)
 cachec(c);
    cachec(NUL);

    if (is_reserved(cache))
 used_reserved(cache);

    return (lookup(cache));
}
