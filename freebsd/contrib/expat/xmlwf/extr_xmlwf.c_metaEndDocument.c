
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fp; } ;
typedef TYPE_1__ XmlwfUserData ;
typedef int XML_Parser ;


 int T (char*) ;
 scalar_t__ XML_GetUserData (int ) ;
 int fputts (int ,int ) ;

__attribute__((used)) static void
metaEndDocument(void *userData)
{
  fputts(T("</document>\n"),
         ((XmlwfUserData *)XML_GetUserData((XML_Parser) userData))->fp);
}
