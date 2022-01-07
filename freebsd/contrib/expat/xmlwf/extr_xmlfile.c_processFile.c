
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int XML_Parser ;
typedef int XML_Char ;
struct TYPE_2__ {int* retPtr; int parser; } ;
typedef TYPE_1__ PROCESS_ARGS ;


 scalar_t__ XML_Parse (int ,char const*,int,int) ;
 scalar_t__ XML_STATUS_ERROR ;
 int reportError (int ,int const*) ;

__attribute__((used)) static void
processFile(const void *data, size_t size,
            const XML_Char *filename, void *args)
{
  XML_Parser parser = ((PROCESS_ARGS *)args)->parser;
  int *retPtr = ((PROCESS_ARGS *)args)->retPtr;
  if (XML_Parse(parser, (const char *)data, (int)size, 1) == XML_STATUS_ERROR) {
    reportError(parser, filename);
    *retPtr = 0;
  }
  else
    *retPtr = 1;
}
