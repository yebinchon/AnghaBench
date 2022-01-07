
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct field_t {int sz; int attr; unsigned int lb; int offset; int name; } ;
struct TYPE_9__ {int cur; } ;
typedef TYPE_1__ bitstr_t ;



 int BYTE_ALIGN (TYPE_1__*) ;
 int CHECK_BOUND (TYPE_1__*,int) ;

 int DECODE ;
 int H323_ERROR_NONE ;
 int INC_BITS (TYPE_1__*,int) ;
 int PRINT (char*,...) ;
 int TAB_SIZE ;


 int get_bits (TYPE_1__*,int) ;
 unsigned int get_len (TYPE_1__*) ;
 unsigned int get_uint (TYPE_1__*,unsigned int) ;

__attribute__((used)) static int decode_int(bitstr_t *bs, const struct field_t *f,
                      char *base, int level)
{
 unsigned int len;

 PRINT("%*.s%s", level * TAB_SIZE, " ", f->name);

 switch (f->sz) {
 case 131:
  BYTE_ALIGN(bs);
  bs->cur++;
  break;
 case 128:
  BYTE_ALIGN(bs);
  bs->cur += 2;
  break;
 case 130:
  len = get_bits(bs, 2) + 1;
  BYTE_ALIGN(bs);
  if (base && (f->attr & DECODE)) {
   unsigned int v = get_uint(bs, len) + f->lb;
   PRINT(" = %u", v);
   *((unsigned int *)(base + f->offset)) = v;
  }
  bs->cur += len;
  break;
 case 129:
  BYTE_ALIGN(bs);
  CHECK_BOUND(bs, 2);
  len = get_len(bs);
  bs->cur += len;
  break;
 default:
  INC_BITS(bs, f->sz);
  break;
 }

 PRINT("\n");

 CHECK_BOUND(bs, 0);
 return H323_ERROR_NONE;
}
