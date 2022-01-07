
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe_trace_arg_ref {struct probe_trace_arg_ref* next; } ;
struct probe_trace_arg {int * type; struct probe_trace_arg_ref* ref; } ;
typedef int Dwarf_Die ;


 int BYTES_TO_BITS (int) ;
 int DW_TAG_array_type ;
 int DW_TAG_pointer_type ;
 int E2BIG ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int MAX_BASIC_TYPE_BITS ;
 int die_compare_name (int *,char*) ;
 int * die_get_real_type (int *,int *) ;
 scalar_t__ die_is_signed_type (int *) ;
 int dwarf_bitoffset (int *) ;
 int dwarf_bitsize (int *) ;
 int dwarf_bytesize (int *) ;
 int dwarf_diename (int *) ;
 int dwarf_tag (int *) ;
 int pr_debug (char*,int ,int ) ;
 int pr_info (char*,int ,int) ;
 int pr_warning (char*,...) ;
 int snprintf (char*,int,char*,char,int,...) ;
 scalar_t__ strcmp (char const*,char*) ;
 void* strdup (char const*) ;
 int strerror (int) ;
 struct probe_trace_arg_ref* zalloc (int) ;

__attribute__((used)) static int convert_variable_type(Dwarf_Die *vr_die,
     struct probe_trace_arg *tvar,
     const char *cast)
{
 struct probe_trace_arg_ref **ref_ptr = &tvar->ref;
 Dwarf_Die type;
 char buf[16];
 int bsize, boffs, total;
 int ret;


 if (cast && strcmp(cast, "string") != 0) {

  tvar->type = strdup(cast);
  return (tvar->type == ((void*)0)) ? -ENOMEM : 0;
 }

 bsize = dwarf_bitsize(vr_die);
 if (bsize > 0) {

  boffs = dwarf_bitoffset(vr_die);
  total = dwarf_bytesize(vr_die);
  if (boffs < 0 || total < 0)
   return -ENOENT;
  ret = snprintf(buf, 16, "b%d@%d/%zd", bsize, boffs,
    BYTES_TO_BITS(total));
  goto formatted;
 }

 if (die_get_real_type(vr_die, &type) == ((void*)0)) {
  pr_warning("Failed to get a type information of %s.\n",
      dwarf_diename(vr_die));
  return -ENOENT;
 }

 pr_debug("%s type is %s.\n",
   dwarf_diename(vr_die), dwarf_diename(&type));

 if (cast && strcmp(cast, "string") == 0) {
  ret = dwarf_tag(&type);
  if (ret != DW_TAG_pointer_type &&
      ret != DW_TAG_array_type) {
   pr_warning("Failed to cast into string: "
       "%s(%s) is not a pointer nor array.\n",
       dwarf_diename(vr_die), dwarf_diename(&type));
   return -EINVAL;
  }
  if (ret == DW_TAG_pointer_type) {
   if (die_get_real_type(&type, &type) == ((void*)0)) {
    pr_warning("Failed to get a type"
        " information.\n");
    return -ENOENT;
   }
   while (*ref_ptr)
    ref_ptr = &(*ref_ptr)->next;

   *ref_ptr = zalloc(sizeof(struct probe_trace_arg_ref));
   if (*ref_ptr == ((void*)0)) {
    pr_warning("Out of memory error\n");
    return -ENOMEM;
   }
  }
  if (!die_compare_name(&type, "char") &&
      !die_compare_name(&type, "unsigned char")) {
   pr_warning("Failed to cast into string: "
       "%s is not (unsigned) char *.\n",
       dwarf_diename(vr_die));
   return -EINVAL;
  }
  tvar->type = strdup(cast);
  return (tvar->type == ((void*)0)) ? -ENOMEM : 0;
 }

 ret = dwarf_bytesize(&type);
 if (ret <= 0)

  return 0;
 ret = BYTES_TO_BITS(ret);


 if (ret > MAX_BASIC_TYPE_BITS) {
  pr_info("%s exceeds max-bitwidth. Cut down to %d bits.\n",
   dwarf_diename(&type), MAX_BASIC_TYPE_BITS);
  ret = MAX_BASIC_TYPE_BITS;
 }
 ret = snprintf(buf, 16, "%c%d",
         die_is_signed_type(&type) ? 's' : 'u', ret);

formatted:
 if (ret < 0 || ret >= 16) {
  if (ret >= 16)
   ret = -E2BIG;
  pr_warning("Failed to convert variable type: %s\n",
      strerror(-ret));
  return ret;
 }
 tvar->type = strdup(buf);
 if (tvar->type == ((void*)0))
  return -ENOMEM;
 return 0;
}
