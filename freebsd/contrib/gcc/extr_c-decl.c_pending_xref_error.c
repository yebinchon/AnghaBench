
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,int *,scalar_t__) ;
 scalar_t__ pending_invalid_xref ;
 int pending_invalid_xref_location ;

void
pending_xref_error (void)
{
  if (pending_invalid_xref != 0)
    error ("%H%qE defined as wrong kind of tag",
    &pending_invalid_xref_location, pending_invalid_xref);
  pending_invalid_xref = 0;
}
