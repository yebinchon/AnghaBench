#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  unichar ;
struct bin_messagetable_item {scalar_t__ data; int /*<<< orphan*/  flags; int /*<<< orphan*/  length; } ;
struct bin_messagetable {TYPE_1__* items; int /*<<< orphan*/  cblocks; } ;
typedef  size_t rc_uint_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
struct TYPE_2__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  highid; int /*<<< orphan*/  lowid; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t BIN_MESSAGETABLE_BLOCK_SIZE ; 
 size_t BIN_MESSAGETABLE_ITEM_SIZE ; 
 size_t BIN_MESSAGETABLE_SIZE ; 
 size_t MESSAGE_RESOURCE_UNICODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wrtarget ; 

__attribute__((used)) static void
FUNC8 (FILE *e, rc_uint_type length, const bfd_byte *data)
{
  int has_error = 0;
  const struct bin_messagetable *mt;
  FUNC1 (e, "BEGIN\n");

  FUNC7 (e, length, data, 0, 0, 0);

  FUNC1 (e, "\n");
  FUNC6 (e, "MC syntax dump");
  if (length < BIN_MESSAGETABLE_SIZE)
    has_error = 1;
  else
    do {
      rc_uint_type m, i;
      mt = (const struct bin_messagetable *) data;
      m = FUNC4 (&wrtarget, mt->cblocks, length);
      if (length < (BIN_MESSAGETABLE_SIZE + m * BIN_MESSAGETABLE_BLOCK_SIZE))
	{
	  has_error = 1;
	  break;
	}
      for (i = 0; i < m; i++)
	{
	  rc_uint_type low, high, offset;
	  const struct bin_messagetable_item *mti;

	  low = FUNC4 (&wrtarget, mt->items[i].lowid, 4);
	  high = FUNC4 (&wrtarget, mt->items[i].highid, 4);
	  offset = FUNC4 (&wrtarget, mt->items[i].offset, 4);
	  while (low <= high)
	    {
	      rc_uint_type elen, flags;
	      if ((offset + BIN_MESSAGETABLE_ITEM_SIZE) > length)
		{
		  has_error = 1;
	  break;
		}
	      mti = (const struct bin_messagetable_item *) &data[offset];
	      elen = FUNC3 (&wrtarget, mti->length, 2);
	      flags = FUNC3 (&wrtarget, mti->flags, 2);
	      if ((offset + elen) > length)
		{
		  has_error = 1;
		  break;
		}
	      FUNC6 (e, "MessageId = 0x%x", low);
	      FUNC6 (e, "");
	      if ((flags & MESSAGE_RESOURCE_UNICODE) == MESSAGE_RESOURCE_UNICODE)
		FUNC2 (e, (const unichar *) mti->data,
			       (elen - BIN_MESSAGETABLE_ITEM_SIZE) / 2);
	      else
		FUNC0 (e, (const char *) mti->data,
			     (elen - BIN_MESSAGETABLE_ITEM_SIZE));
	      FUNC6 (e,"");
	      ++low;
	      offset += elen;
	    }
	}
    } while (0);
  if (has_error)
    FUNC6 (e, "Illegal data");
  FUNC5 (e);
  FUNC1 (e, "END\n");
}