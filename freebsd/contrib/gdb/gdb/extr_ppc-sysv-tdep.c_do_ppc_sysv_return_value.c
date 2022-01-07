
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct regcache {int dummy; } ;
struct gdbarch_tdep {int wordsize; scalar_t__ ppc_vr0_regnum; scalar_t__ ppc_ev0_regnum; scalar_t__ ppc_gp0_regnum; } ;
struct gdbarch {int dummy; } ;
typedef enum return_value_convention { ____Placeholder_return_value_convention } return_value_convention ;
typedef void bfd_byte ;
typedef int ULONGEST ;


 scalar_t__ FP0_REGNUM ;
 int MAX_REGISTER_SIZE ;
 int RETURN_VALUE_REGISTER_CONVENTION ;
 int RETURN_VALUE_STRUCT_CONVENTION ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_ARRAY ;
 scalar_t__ TYPE_CODE_FLT ;
 scalar_t__ TYPE_CODE_INT ;
 int TYPE_LENGTH (struct type*) ;
 scalar_t__ TYPE_VECTOR (struct type*) ;
 int convert_typed_floating (void const*,struct type*,char*,struct type*) ;
 int extract_unsigned_integer (void const*,int) ;
 int gdb_assert (int) ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int memcpy (char*,void const*,int) ;
 int memset (char*,int ,int) ;
 scalar_t__ ppc_floating_point_unit_p (struct gdbarch*) ;
 int regcache_cooked_read (struct regcache*,scalar_t__,char*) ;
 int regcache_cooked_read_unsigned (struct regcache*,scalar_t__,int *) ;
 int regcache_cooked_write (struct regcache*,scalar_t__,char*) ;
 int regcache_cooked_write_unsigned (struct regcache*,scalar_t__,int ) ;
 struct type* register_type (struct gdbarch*,scalar_t__) ;
 int store_unsigned_integer (void*,int,int ) ;
 int unpack_long (struct type*,void const*) ;

__attribute__((used)) static enum return_value_convention
do_ppc_sysv_return_value (struct gdbarch *gdbarch, struct type *type,
     struct regcache *regcache, void *readbuf,
     const void *writebuf, int broken_gcc)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);
  gdb_assert (tdep->wordsize == 4);
  if (TYPE_CODE (type) == TYPE_CODE_FLT
      && TYPE_LENGTH (type) <= 8
      && ppc_floating_point_unit_p (gdbarch))
    {
      if (readbuf)
 {


   char regval[MAX_REGISTER_SIZE];
   struct type *regtype = register_type (gdbarch, FP0_REGNUM + 1);
   regcache_cooked_read (regcache, FP0_REGNUM + 1, regval);
   convert_typed_floating (regval, regtype, readbuf, type);
 }
      if (writebuf)
 {


   char regval[MAX_REGISTER_SIZE];
   struct type *regtype = register_type (gdbarch, FP0_REGNUM);
   convert_typed_floating (writebuf, type, regval, regtype);
   regcache_cooked_write (regcache, FP0_REGNUM + 1, regval);
 }
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  if ((TYPE_CODE (type) == TYPE_CODE_INT && TYPE_LENGTH (type) == 8)
      || (TYPE_CODE (type) == TYPE_CODE_FLT && TYPE_LENGTH (type) == 8))
    {
      if (readbuf)
 {

   regcache_cooked_read (regcache, tdep->ppc_gp0_regnum + 3,
    (bfd_byte *) readbuf + 0);
   regcache_cooked_read (regcache, tdep->ppc_gp0_regnum + 4,
    (bfd_byte *) readbuf + 4);
 }
      if (writebuf)
 {

   regcache_cooked_write (regcache, tdep->ppc_gp0_regnum + 3,
     (const bfd_byte *) writebuf + 0);
   regcache_cooked_write (regcache, tdep->ppc_gp0_regnum + 4,
     (const bfd_byte *) writebuf + 4);
 }
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  if (TYPE_CODE (type) == TYPE_CODE_INT
      && TYPE_LENGTH (type) <= tdep->wordsize)
    {
      if (readbuf)
 {



   ULONGEST regval;
   regcache_cooked_read_unsigned (regcache, tdep->ppc_gp0_regnum + 3,
      &regval);
   store_unsigned_integer (readbuf, TYPE_LENGTH (type), regval);
 }
      if (writebuf)
 {


   regcache_cooked_write_unsigned (regcache, tdep->ppc_gp0_regnum + 3,
       unpack_long (type, writebuf));
 }
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  if (TYPE_LENGTH (type) == 16
      && TYPE_CODE (type) == TYPE_CODE_ARRAY
      && TYPE_VECTOR (type) && tdep->ppc_vr0_regnum >= 0)
    {
      if (readbuf)
 {

   regcache_cooked_read (regcache, tdep->ppc_vr0_regnum + 2, readbuf);
 }
      if (writebuf)
 {

   regcache_cooked_write (regcache, tdep->ppc_vr0_regnum + 2, writebuf);
 }
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  if (TYPE_LENGTH (type) == 8
      && TYPE_CODE (type) == TYPE_CODE_ARRAY
      && TYPE_VECTOR (type) && tdep->ppc_ev0_regnum >= 0)
    {





      if (readbuf)
 regcache_cooked_read (regcache, tdep->ppc_ev0_regnum + 3, readbuf);
      if (writebuf)
 regcache_cooked_write (regcache, tdep->ppc_ev0_regnum + 3, writebuf);
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  if (broken_gcc && TYPE_LENGTH (type) <= 8)
    {
      if (readbuf)
 {




   int word = 0;
   while (1)
     {
       ULONGEST reg;
       int len = TYPE_LENGTH (type) - word * tdep->wordsize;
       if (len <= 0)
  break;
       if (len > tdep->wordsize)
  len = tdep->wordsize;
       regcache_cooked_read_unsigned (regcache,
          tdep->ppc_gp0_regnum + 3 + word,
          &reg);
       store_unsigned_integer (((bfd_byte *) readbuf
           + word * tdep->wordsize), len, reg);
       word++;
     }
 }
      if (writebuf)
 {




   int word = 0;
   while (1)
     {
       ULONGEST reg;
       int len = TYPE_LENGTH (type) - word * tdep->wordsize;
       if (len <= 0)
  break;
       if (len > tdep->wordsize)
  len = tdep->wordsize;
       reg = extract_unsigned_integer (((const bfd_byte *) writebuf
            + word * tdep->wordsize), len);
       regcache_cooked_write_unsigned (regcache,
           tdep->ppc_gp0_regnum + 3 + word,
           reg);
       word++;
     }
 }
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  if (TYPE_LENGTH (type) <= 8)
    {
      if (readbuf)
 {



   char regvals[MAX_REGISTER_SIZE * 2];
   regcache_cooked_read (regcache, tdep->ppc_gp0_regnum + 3,
    regvals + 0 * tdep->wordsize);
   if (TYPE_LENGTH (type) > tdep->wordsize)
     regcache_cooked_read (regcache, tdep->ppc_gp0_regnum + 4,
      regvals + 1 * tdep->wordsize);
   memcpy (readbuf, regvals, TYPE_LENGTH (type));
 }
      if (writebuf)
 {



   char regvals[MAX_REGISTER_SIZE * 2];
   memset (regvals, 0, sizeof regvals);
   memcpy (regvals, writebuf, TYPE_LENGTH (type));
   regcache_cooked_write (regcache, tdep->ppc_gp0_regnum + 3,
     regvals + 0 * tdep->wordsize);
   if (TYPE_LENGTH (type) > tdep->wordsize)
     regcache_cooked_write (regcache, tdep->ppc_gp0_regnum + 4,
       regvals + 1 * tdep->wordsize);
 }
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  return RETURN_VALUE_STRUCT_CONVENTION;
}
