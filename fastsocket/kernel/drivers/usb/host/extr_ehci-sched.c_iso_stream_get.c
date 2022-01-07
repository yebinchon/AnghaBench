
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_iso_stream {int refcount; } ;


 scalar_t__ likely (int ) ;

__attribute__((used)) static inline struct ehci_iso_stream *
iso_stream_get (struct ehci_iso_stream *stream)
{
 if (likely (stream != ((void*)0)))
  stream->refcount++;
 return stream;
}
