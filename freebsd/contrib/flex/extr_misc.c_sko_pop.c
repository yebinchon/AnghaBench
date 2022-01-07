
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flex_die (char*) ;
 scalar_t__ sko_len ;
 int sko_peek (int*) ;

__attribute__((used)) static void sko_pop(bool* dc)
{
    sko_peek(dc);
    sko_len--;
    if(sko_len < 0)
        flex_die("popped too many times in skeleton.");
}
