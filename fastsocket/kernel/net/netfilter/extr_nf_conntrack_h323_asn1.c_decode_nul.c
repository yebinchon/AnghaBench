
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct field_t {int name; } ;
typedef int bitstr_t ;


 int H323_ERROR_NONE ;
 int PRINT (char*,int,char*,int ) ;
 int TAB_SIZE ;

__attribute__((used)) static int decode_nul(bitstr_t *bs, const struct field_t *f,
                      char *base, int level)
{
 PRINT("%*.s%s\n", level * TAB_SIZE, " ", f->name);

 return H323_ERROR_NONE;
}
