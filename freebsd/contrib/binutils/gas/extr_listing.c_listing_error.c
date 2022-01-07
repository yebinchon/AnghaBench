
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int listing_message (int ,char const*) ;

void
listing_error (const char *message)
{
  listing_message (_("Error:"), message);
}
