
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong_t ;
typedef int kind ;
struct TYPE_3__ {int dtdt_kind; int dtdt_ckind; int dtdt_flags; scalar_t__ dtdt_size; } ;
typedef TYPE_1__ dtrace_diftype_t ;
typedef int ckind ;
 int DIF_TF_BYREF ;
 int DIF_TF_BYUREF ;


 int snprintf (char*,size_t,char*,...) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static char *
dt_dis_typestr(const dtrace_diftype_t *t, char *buf, size_t len)
{
 char kind[16], ckind[16];

 switch (t->dtdt_kind) {
 case 129:
  (void) strcpy(kind, "D type");
  break;
 case 128:
  (void) strcpy(kind, "string");
  break;
 default:
  (void) snprintf(kind, sizeof (kind), "0x%x", t->dtdt_kind);
 }

 switch (t->dtdt_ckind) {
 case 131:
  (void) strcpy(ckind, "unknown");
  break;
 case 137:
  (void) strcpy(ckind, "integer");
  break;
 case 140:
  (void) strcpy(ckind, "float");
  break;
 case 136:
  (void) strcpy(ckind, "pointer");
  break;
 case 143:
  (void) strcpy(ckind, "array");
  break;
 case 138:
  (void) strcpy(ckind, "function");
  break;
 case 134:
  (void) strcpy(ckind, "struct");
  break;
 case 132:
  (void) strcpy(ckind, "union");
  break;
 case 141:
  (void) strcpy(ckind, "enum");
  break;
 case 139:
  (void) strcpy(ckind, "forward");
  break;
 case 133:
  (void) strcpy(ckind, "typedef");
  break;
 case 130:
  (void) strcpy(ckind, "volatile");
  break;
 case 142:
  (void) strcpy(ckind, "const");
  break;
 case 135:
  (void) strcpy(ckind, "restrict");
  break;
 default:
  (void) snprintf(ckind, sizeof (ckind), "0x%x", t->dtdt_ckind);
 }

 if (t->dtdt_flags & (DIF_TF_BYREF | DIF_TF_BYUREF)) {
  (void) snprintf(buf, len, "%s (%s) by %sref (size %lu)",
      kind, ckind, (t->dtdt_flags & DIF_TF_BYUREF) ? "user " : "",
      (ulong_t)t->dtdt_size);
 } else {
  (void) snprintf(buf, len, "%s (%s) (size %lu)",
      kind, ckind, (ulong_t)t->dtdt_size);
 }

 return (buf);
}
