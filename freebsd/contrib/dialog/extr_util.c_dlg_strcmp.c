
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UCH (int ) ;
 int _toupper (int) ;
 scalar_t__ isalpha (int) ;
 scalar_t__ islower (int) ;

int
dlg_strcmp(const char *a, const char *b)
{
    int ac, bc, cmp;

    for (;;) {
 ac = UCH(*a++);
 bc = UCH(*b++);
 if (isalpha(ac) && islower(ac))
     ac = _toupper(ac);
 if (isalpha(bc) && islower(bc))
     bc = _toupper(bc);
 cmp = ac - bc;
 if (ac == 0 || bc == 0 || cmp != 0)
     break;
    }
    return cmp;
}
