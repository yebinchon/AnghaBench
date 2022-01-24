#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  windres_bfd ;
typedef  int /*<<< orphan*/  unichar ;
struct TYPE_17__ {TYPE_8__* var; TYPE_10__* fixed; } ;
typedef  TYPE_5__ rc_versioninfo ;
struct TYPE_18__ {struct TYPE_18__* next; void* charset; void* language; } ;
typedef  TYPE_6__ rc_ver_varinfo ;
struct TYPE_19__ {struct TYPE_19__* next; int /*<<< orphan*/  value; int /*<<< orphan*/ * key; } ;
typedef  TYPE_7__ rc_ver_stringinfo ;
struct TYPE_14__ {TYPE_6__* var; int /*<<< orphan*/ * key; } ;
struct TYPE_13__ {TYPE_7__* strings; int /*<<< orphan*/ * language; } ;
struct TYPE_15__ {TYPE_2__ var; TYPE_1__ string; } ;
struct TYPE_20__ {struct TYPE_20__* next; TYPE_3__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_8__ rc_ver_info ;
typedef  unsigned int rc_uint_type ;
struct TYPE_16__ {TYPE_5__* versioninfo; } ;
struct TYPE_21__ {TYPE_4__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_9__ rc_res_resource ;
struct TYPE_12__ {void* file_date_ls; void* file_date_ms; void* file_subtype; void* file_type; void* file_os; void* file_flags; void* file_flags_mask; void* product_version_ls; void* product_version_ms; void* file_version_ls; void* file_version_ms; } ;
typedef  TYPE_10__ rc_fixed_versioninfo ;
typedef  int /*<<< orphan*/  bfd_byte ;

/* Variables and functions */
 int /*<<< orphan*/  RES_TYPE_VERSIONINFO ; 
 int /*<<< orphan*/  VERINFO_STRING ; 
 int /*<<< orphan*/  VERINFO_VAR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int,char const*,int /*<<< orphan*/ **,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static rc_res_resource *
FUNC8 (windres_bfd *wrbfd, const bfd_byte *data, rc_uint_type length)
{
  rc_uint_type verlen, vallen, type, off;
  rc_fixed_versioninfo *fi;
  rc_ver_info *first, **pp;
  rc_versioninfo *v;
  rc_res_resource *r;

  FUNC3 (wrbfd, data, length, "VS_VERSION_INFO",
		      (unichar **) NULL, &verlen, &vallen, &type, &off);

  if ((unsigned int) verlen != length)
    FUNC1 (FUNC0("version length %d does not match resource length %lu"),
	   (int) verlen, (unsigned long) length);

  if (type != 0)
    FUNC1 (FUNC0("unexpected version type %d"), (int) type);

  data += off;
  length -= off;

  if (vallen == 0)
    fi = NULL;
  else
    {
      unsigned long signature, fiv;

      if (vallen != 52)
	FUNC1 (FUNC0("unexpected fixed version information length %ld"), (long) vallen);

      if (length < 52)
	FUNC5 (FUNC0("fixed version info"));

      signature = FUNC7 (wrbfd, data, 4);
      if (signature != 0xfeef04bd)
	FUNC1 (FUNC0("unexpected fixed version signature %lu"), signature);

      fiv = FUNC7 (wrbfd, data + 4, 4);
      if (fiv != 0 && fiv != 0x10000)
	FUNC1 (FUNC0("unexpected fixed version info version %lu"), fiv);

      fi = (rc_fixed_versioninfo *) FUNC4 (sizeof (rc_fixed_versioninfo));

      fi->file_version_ms = FUNC7 (wrbfd, data + 8, 4);
      fi->file_version_ls = FUNC7 (wrbfd, data + 12, 4);
      fi->product_version_ms = FUNC7 (wrbfd, data + 16, 4);
      fi->product_version_ls = FUNC7 (wrbfd, data + 20, 4);
      fi->file_flags_mask = FUNC7 (wrbfd, data + 24, 4);
      fi->file_flags = FUNC7 (wrbfd, data + 28, 4);
      fi->file_os = FUNC7 (wrbfd, data + 32, 4);
      fi->file_type = FUNC7 (wrbfd, data + 36, 4);
      fi->file_subtype = FUNC7 (wrbfd, data + 40, 4);
      fi->file_date_ms = FUNC7 (wrbfd, data + 44, 4);
      fi->file_date_ls = FUNC7 (wrbfd, data + 48, 4);

      data += 52;
      length -= 52;
    }

  first = NULL;
  pp = &first;

  while (length > 0)
    {
      rc_ver_info *vi;
      int ch;

      if (length < 8)
	FUNC5 (FUNC0("version var info"));

      vi = (rc_ver_info *) FUNC4 (sizeof (rc_ver_info));

      ch = FUNC6 (wrbfd, data + 6, 2);

      if (ch == 'S')
	{
	  rc_ver_stringinfo **ppvs;

	  vi->type = VERINFO_STRING;

	  FUNC3 (wrbfd, data, length, "StringFileInfo",
			      (unichar **) NULL, &verlen, &vallen, &type,
			      &off);

	  if (vallen != 0)
	    FUNC1 (FUNC0("unexpected stringfileinfo value length %ld"), (long) vallen);

	  data += off;
	  length -= off;

	  FUNC3 (wrbfd, data, length, (const char *) NULL,
			      &vi->u.string.language, &verlen, &vallen,
			      &type, &off);

	  if (vallen != 0)
	    FUNC1 (FUNC0("unexpected version stringtable value length %ld"), (long) vallen);

	  data += off;
	  length -= off;
	  verlen -= off;

	  vi->u.string.strings = NULL;
	  ppvs = &vi->u.string.strings;

	  /* It's convenient to round verlen to a 4 byte alignment,
             since we round the subvariables in the loop.  */
	  verlen = (verlen + 3) &~ 3;

	  while (verlen > 0)
	    {
	      rc_ver_stringinfo *vs;
	      rc_uint_type subverlen, vslen, valoff;

	      vs = (rc_ver_stringinfo *) FUNC4 (sizeof *vs);

	      FUNC3 (wrbfd, data, length,
				  (const char *) NULL, &vs->key, &subverlen,
				  &vallen, &type, &off);

	      subverlen = (subverlen + 3) &~ 3;

	      data += off;
	      length -= off;

	      vs->value = FUNC2 (wrbfd, data, length, &vslen);
	      valoff = vslen * 2 + 2;
	      valoff = (valoff + 3) &~ 3;

	      if (off + valoff != subverlen)
		FUNC1 (FUNC0("unexpected version string length %ld != %ld + %ld"),
		       (long) subverlen, (long) off, (long) valoff);

	      vs->next = NULL;
	      *ppvs = vs;
	      ppvs = &vs->next;

	      data += valoff;
	      length -= valoff;

	      if (verlen < subverlen)
		FUNC1 (FUNC0("unexpected version string length %ld < %ld"),
		       (long) verlen, (long) subverlen);

	      verlen -= subverlen;
	    }
	}
      else if (ch == 'V')
	{
	  rc_ver_varinfo **ppvv;

	  vi->type = VERINFO_VAR;

	  FUNC3 (wrbfd, data, length, "VarFileInfo",
			      (unichar **) NULL, &verlen, &vallen, &type,
			      &off);

	  if (vallen != 0)
	    FUNC1 (FUNC0("unexpected varfileinfo value length %ld"), (long) vallen);

	  data += off;
	  length -= off;

	  FUNC3 (wrbfd, data, length, (const char *) NULL,
			      &vi->u.var.key, &verlen, &vallen, &type, &off);

	  data += off;
	  length -= off;

	  vi->u.var.var = NULL;
	  ppvv = &vi->u.var.var;

	  while (vallen > 0)
	    {
	      rc_ver_varinfo *vv;

	      if (length < 4)
		FUNC5 (FUNC0("version varfileinfo"));

	      vv = (rc_ver_varinfo *) FUNC4 (sizeof (rc_ver_varinfo));

	      vv->language = FUNC6 (wrbfd, data, 2);
	      vv->charset = FUNC6 (wrbfd, data + 2, 2);

	      vv->next = NULL;
	      *ppvv = vv;
	      ppvv = &vv->next;

	      data += 4;
	      length -= 4;

	      if (vallen < 4)
		FUNC1 (FUNC0("unexpected version value length %ld"), (long) vallen);

	      vallen -= 4;
	    }
	}
      else
	FUNC1 (FUNC0("unexpected version string"));

      vi->next = NULL;
      *pp = vi;
      pp = &vi->next;
    }

  v = (rc_versioninfo *) FUNC4 (sizeof (rc_versioninfo));
  v->fixed = fi;
  v->var = first;

  r = (rc_res_resource *) FUNC4 (sizeof *r);
  r->type = RES_TYPE_VERSIONINFO;
  r->u.versioninfo = v;

  return r;
}