#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* XML_Parser ;
typedef  int /*<<< orphan*/  XML_Char ;
struct TYPE_11__ {int minBytesPerChar; } ;
struct TYPE_10__ {int /*<<< orphan*/  m_tempPool; int /*<<< orphan*/  m_handlerArg; int /*<<< orphan*/  (* m_processingInstructionHandler ) (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;scalar_t__ m_defaultHandler; } ;
typedef  TYPE_2__ ENCODING ;

/* Variables and functions */
 int FUNC0 (TYPE_2__ const*,char const*) ; 
 char const* FUNC1 (TYPE_2__ const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *,TYPE_2__ const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__ const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(XML_Parser parser, const ENCODING *enc,
                            const char *start, const char *end)
{
  const XML_Char *target;
  XML_Char *data;
  const char *tem;
  if (!parser->m_processingInstructionHandler) {
    if (parser->m_defaultHandler)
      FUNC6(parser, enc, start, end);
    return 1;
  }
  start += enc->minBytesPerChar * 2;
  tem = start + FUNC0(enc, start);
  target = FUNC5(&parser->m_tempPool, enc, start, tem);
  if (!target)
    return 0;
  FUNC4(&parser->m_tempPool);
  data = FUNC5(&parser->m_tempPool, enc,
                        FUNC1(enc, tem),
                        end - enc->minBytesPerChar*2);
  if (!data)
    return 0;
  FUNC2(data);
  parser->m_processingInstructionHandler(parser->m_handlerArg, target, data);
  FUNC3(&parser->m_tempPool);
  return 1;
}