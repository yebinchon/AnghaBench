
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct field_t {unsigned int lb; int sz; int name; } ;
typedef int bitstr_t ;


 int BYTE_ALIGN (int *) ;
 int CHECK_BOUND (int *,int ) ;
 int H323_ERROR_NONE ;
 int INC_BITS (int *,unsigned int) ;
 int PRINT (char*,int,char*,int ) ;
 int TAB_SIZE ;
 unsigned int get_bits (int *,int ) ;

__attribute__((used)) static int decode_numstr(bitstr_t *bs, const struct field_t *f,
                         char *base, int level)
{
 unsigned int len;

 PRINT("%*.s%s\n", level * TAB_SIZE, " ", f->name);


 len = get_bits(bs, f->sz) + f->lb;

 BYTE_ALIGN(bs);
 INC_BITS(bs, (len << 2));

 CHECK_BOUND(bs, 0);
 return H323_ERROR_NONE;
}
