
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int id ;
struct TYPE_14__ {char* dtpd_provider; char* dtpd_name; scalar_t__ dtpd_id; } ;
typedef TYPE_2__ dtrace_probedesc_t ;
struct TYPE_15__ {char const* dtpda_prefix; scalar_t__ dtpda_indent; scalar_t__ dtpda_flow; TYPE_5__* dtpda_edesc; TYPE_2__* dtpda_pdesc; } ;
typedef TYPE_3__ dtrace_probedata_t ;
struct TYPE_16__ {TYPE_1__** dt_pdesc; } ;
typedef TYPE_4__ dtrace_hdl_t ;
typedef scalar_t__ dtrace_flowkind_t ;
struct TYPE_17__ {size_t dtepd_epid; scalar_t__ dtepd_size; } ;
typedef TYPE_5__ dtrace_eprobedesc_t ;
typedef size_t dtrace_epid_t ;
struct TYPE_18__ {size_t dtbd_size; scalar_t__ dtbd_data; } ;
typedef TYPE_6__ dtrace_bufdesc_t ;
struct TYPE_13__ {scalar_t__ dtpd_id; } ;


 scalar_t__ DTRACEFLOW_ENTRY ;
 scalar_t__ DTRACEFLOW_NONE ;
 scalar_t__ DTRACEFLOW_RETURN ;
 size_t DTRACE_EPIDNONE ;
 int assert (int) ;
 int dt_epid_lookup (TYPE_4__*,size_t,TYPE_5__**,TYPE_2__**) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char const*) ;
 char* strstr (char*,char const*) ;

__attribute__((used)) static int
dt_flowindent(dtrace_hdl_t *dtp, dtrace_probedata_t *data, dtrace_epid_t last,
    dtrace_bufdesc_t *buf, size_t offs)
{
 dtrace_probedesc_t *pd = data->dtpda_pdesc, *npd;
 dtrace_eprobedesc_t *epd = data->dtpda_edesc, *nepd;
 char *p = pd->dtpd_provider, *n = pd->dtpd_name, *sub;
 dtrace_flowkind_t flow = DTRACEFLOW_NONE;
 const char *str = ((void*)0);
 static const char *e_str[2] = { " -> ", " => " };
 static const char *r_str[2] = { " <- ", " <= " };
 static const char *ent = "entry", *ret = "return";
 static int entlen = 0, retlen = 0;
 dtrace_epid_t next, id = epd->dtepd_epid;
 int rval;

 if (entlen == 0) {
  assert(retlen == 0);
  entlen = strlen(ent);
  retlen = strlen(ret);
 }
 if ((sub = strstr(n, ent)) != ((void*)0) && sub[entlen] == '\0' &&
     (sub == n || sub[-1] == '-')) {
  flow = DTRACEFLOW_ENTRY;
  str = e_str[strcmp(p, "syscall") == 0];
 } else if ((sub = strstr(n, ret)) != ((void*)0) && sub[retlen] == '\0' &&
     (sub == n || sub[-1] == '-')) {
  flow = DTRACEFLOW_RETURN;
  str = r_str[strcmp(p, "syscall") == 0];
 }







 if (flow == DTRACEFLOW_ENTRY) {
  if ((last != DTRACE_EPIDNONE && id != last &&
      pd->dtpd_id == dtp->dt_pdesc[last]->dtpd_id))
   flow = DTRACEFLOW_NONE;
 }






 if (flow == DTRACEFLOW_RETURN) {
  offs += epd->dtepd_size;

  do {
   if (offs >= buf->dtbd_size)
    goto out;

   next = *(uint32_t *)((uintptr_t)buf->dtbd_data + offs);

   if (next == DTRACE_EPIDNONE)
    offs += sizeof (id);
  } while (next == DTRACE_EPIDNONE);

  if ((rval = dt_epid_lookup(dtp, next, &nepd, &npd)) != 0)
   return (rval);

  if (next != id && npd->dtpd_id == pd->dtpd_id)
   flow = DTRACEFLOW_NONE;
 }

out:
 if (flow == DTRACEFLOW_ENTRY || flow == DTRACEFLOW_RETURN) {
  data->dtpda_prefix = str;
 } else {
  data->dtpda_prefix = "| ";
 }

 if (flow == DTRACEFLOW_RETURN && data->dtpda_indent > 0)
  data->dtpda_indent -= 2;

 data->dtpda_flow = flow;

 return (0);
}
