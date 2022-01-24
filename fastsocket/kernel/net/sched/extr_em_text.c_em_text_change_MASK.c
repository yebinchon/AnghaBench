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
typedef  int /*<<< orphan*/  u8 ;
struct ts_config {int dummy; } ;
struct text_match {scalar_t__ from_offset; scalar_t__ to_offset; scalar_t__ from_layer; scalar_t__ to_layer; struct ts_config* config; } ;
struct tcf_proto {int dummy; } ;
struct tcf_ematch {int datalen; unsigned long data; } ;
struct tcf_em_text {int pattern_len; scalar_t__ from_layer; scalar_t__ to_layer; scalar_t__ from_offset; scalar_t__ to_offset; int /*<<< orphan*/  algo; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct ts_config*) ; 
 int FUNC1 (struct ts_config*) ; 
 int TS_AUTOLOAD ; 
 struct text_match* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct ts_config*) ; 
 struct ts_config* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct tcf_proto *tp, void *data, int len,
			  struct tcf_ematch *m)
{
	struct text_match *tm;
	struct tcf_em_text *conf = data;
	struct ts_config *ts_conf;
	int flags = 0;

	if (len < sizeof(*conf) || len < (sizeof(*conf) + conf->pattern_len))
		return -EINVAL;

	if (conf->from_layer > conf->to_layer)
		return -EINVAL;

	if (conf->from_layer == conf->to_layer &&
	    conf->from_offset > conf->to_offset)
		return -EINVAL;

retry:
	ts_conf = FUNC6(conf->algo, (u8 *) conf + sizeof(*conf),
				     conf->pattern_len, GFP_KERNEL, flags);

	if (flags & TS_AUTOLOAD)
		FUNC3();

	if (FUNC0(ts_conf)) {
		if (FUNC1(ts_conf) == -ENOENT && !(flags & TS_AUTOLOAD)) {
			FUNC4();
			flags |= TS_AUTOLOAD;
			goto retry;
		} else
			return FUNC1(ts_conf);
	} else if (flags & TS_AUTOLOAD) {
		FUNC5(ts_conf);
		return -EAGAIN;
	}

	tm = FUNC2(sizeof(*tm), GFP_KERNEL);
	if (tm == NULL) {
		FUNC5(ts_conf);
		return -ENOBUFS;
	}

	tm->from_offset = conf->from_offset;
	tm->to_offset   = conf->to_offset;
	tm->from_layer  = conf->from_layer;
	tm->to_layer    = conf->to_layer;
	tm->config      = ts_conf;

	m->datalen = sizeof(*tm);
	m->data = (unsigned long) tm;

	return 0;
}