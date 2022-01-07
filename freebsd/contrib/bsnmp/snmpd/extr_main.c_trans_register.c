
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct transport_def {char* name; int id; } ;
struct TYPE_2__ {int* subs; void* len; } ;
struct transport {int table; int or_index; TYPE_1__ index; struct transport_def const* vtab; } ;
typedef int or_descr ;


 int * FIND_OBJECT_OID (int *,TYPE_1__*,int ) ;
 int INSERT_OBJECT_OID (struct transport*,int *) ;
 int SNMP_ERR_GENERR ;
 int SNMP_ERR_INCONS_VALUE ;
 int SNMP_ERR_NOERROR ;
 int TAILQ_INIT (int *) ;
 int free (struct transport*) ;
 struct transport* malloc (int) ;
 int or_register (int *,char*,int *) ;
 int snprintf (char*,int,char*,char*) ;
 void* strlen (char*) ;
 int transport_list ;

int
trans_register(const struct transport_def *def, struct transport **pp)
{
 u_int i;
 char or_descr[256];

 if ((*pp = malloc(sizeof(**pp))) == ((void*)0))
  return (SNMP_ERR_GENERR);


 (*pp)->index.len = strlen(def->name) + 1;
 (*pp)->index.subs[0] = strlen(def->name);
 for (i = 0; i < (*pp)->index.subs[0]; i++)
  (*pp)->index.subs[i + 1] = def->name[i];

 (*pp)->vtab = def;

 if (FIND_OBJECT_OID(&transport_list, &(*pp)->index, 0) != ((void*)0)) {
  free(*pp);
  return (SNMP_ERR_INCONS_VALUE);
 }


 snprintf(or_descr, sizeof(or_descr), "%s transport mapping", def->name);
 if (((*pp)->or_index = or_register(&def->id, or_descr, ((void*)0))) == 0) {
  free(*pp);
  return (SNMP_ERR_GENERR);
 }

 INSERT_OBJECT_OID((*pp), &transport_list);

 TAILQ_INIT(&(*pp)->table);

 return (SNMP_ERR_NOERROR);
}
