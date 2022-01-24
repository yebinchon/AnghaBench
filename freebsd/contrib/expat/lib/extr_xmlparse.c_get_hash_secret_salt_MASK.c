#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* XML_Parser ;
struct TYPE_3__ {unsigned long m_hash_secret_salt; struct TYPE_3__* m_parentParser; } ;

/* Variables and functions */

__attribute__((used)) static unsigned long
FUNC0(XML_Parser parser) {
  if (parser->m_parentParser != NULL)
    return FUNC0(parser->m_parentParser);
  return parser->m_hash_secret_salt;
}