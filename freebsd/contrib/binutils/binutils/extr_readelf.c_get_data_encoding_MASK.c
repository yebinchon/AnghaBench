#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
#define  ELFDATA2LSB 130 
#define  ELFDATA2MSB 129 
#define  ELFDATANONE 128 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static const char *
FUNC2 (unsigned int encoding)
{
  static char buff[32];

  switch (encoding)
    {
    case ELFDATANONE: return FUNC0("none");
    case ELFDATA2LSB: return FUNC0("2's complement, little endian");
    case ELFDATA2MSB: return FUNC0("2's complement, big endian");
    default:
      FUNC1 (buff, sizeof (buff), FUNC0("<unknown: %x>"), encoding);
      return buff;
    }
}