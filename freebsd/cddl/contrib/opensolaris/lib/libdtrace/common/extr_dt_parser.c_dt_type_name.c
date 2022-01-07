
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dtrace_hdl_t ;
typedef scalar_t__ ctf_id_t ;
typedef int ctf_file_t ;
struct TYPE_2__ {int * pcb_hdl; } ;


 int * DT_DYN_CTFP (int *) ;
 scalar_t__ DT_DYN_TYPE (int *) ;
 int * DT_FPTR_CTFP (int *) ;
 scalar_t__ DT_FPTR_TYPE (int *) ;
 int * DT_FUNC_CTFP (int *) ;
 scalar_t__ DT_FUNC_TYPE (int *) ;
 int * ctf_type_name (int *,scalar_t__,char*,size_t) ;
 int snprintf (char*,size_t,char*) ;
 TYPE_1__* yypcb ;

const char *
dt_type_name(ctf_file_t *ctfp, ctf_id_t type, char *buf, size_t len)
{
 dtrace_hdl_t *dtp = yypcb->pcb_hdl;

 if (ctfp == DT_FPTR_CTFP(dtp) && type == DT_FPTR_TYPE(dtp))
  (void) snprintf(buf, len, "function pointer");
 else if (ctfp == DT_FUNC_CTFP(dtp) && type == DT_FUNC_TYPE(dtp))
  (void) snprintf(buf, len, "function");
 else if (ctfp == DT_DYN_CTFP(dtp) && type == DT_DYN_TYPE(dtp))
  (void) snprintf(buf, len, "dynamic variable");
 else if (ctfp == ((void*)0))
  (void) snprintf(buf, len, "<none>");
 else if (ctf_type_name(ctfp, type, buf, len) == ((void*)0))
  (void) snprintf(buf, len, "unknown");

 return (buf);
}
