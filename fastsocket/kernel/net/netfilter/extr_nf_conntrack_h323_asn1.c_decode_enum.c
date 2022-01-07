
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct field_t {int attr; int sz; int name; } ;
typedef int bitstr_t ;


 int CHECK_BOUND (int *,int ) ;
 int EXT ;
 int H323_ERROR_NONE ;
 int INC_BITS (int *,int) ;
 int PRINT (char*,int,char*,int ) ;
 int TAB_SIZE ;
 scalar_t__ get_bit (int *) ;

__attribute__((used)) static int decode_enum(bitstr_t *bs, const struct field_t *f,
                       char *base, int level)
{
 PRINT("%*.s%s\n", level * TAB_SIZE, " ", f->name);

 if ((f->attr & EXT) && get_bit(bs)) {
  INC_BITS(bs, 7);
 } else {
  INC_BITS(bs, f->sz);
 }

 CHECK_BOUND(bs, 0);
 return H323_ERROR_NONE;
}
