
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct field_t {int name; } ;
typedef int bitstr_t ;


 int CHECK_BOUND (int *,int ) ;
 int H323_ERROR_NONE ;
 int INC_BIT (int *) ;
 int PRINT (char*,int,char*,int ) ;
 int TAB_SIZE ;

__attribute__((used)) static int decode_bool(bitstr_t *bs, const struct field_t *f,
                       char *base, int level)
{
 PRINT("%*.s%s\n", level * TAB_SIZE, " ", f->name);

 INC_BIT(bs);

 CHECK_BOUND(bs, 0);
 return H323_ERROR_NONE;
}
