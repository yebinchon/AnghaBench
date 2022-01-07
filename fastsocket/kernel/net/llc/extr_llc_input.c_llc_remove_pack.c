
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LLC_DEST_CONN ;
 int LLC_DEST_SAP ;
 int ** llc_type_handlers ;

void llc_remove_pack(int type)
{
 if (type == LLC_DEST_SAP || type == LLC_DEST_CONN)
  llc_type_handlers[type - 1] = ((void*)0);
}
