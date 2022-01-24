#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {scalar_t__ codec_type; } ;
struct TYPE_26__ {int nb_streams; int /*<<< orphan*/  pb; TYPE_1__* oformat; TYPE_2__** streams; } ;
struct TYPE_25__ {size_t stream_index; int pos; int /*<<< orphan*/  duration; void* dts; void* pts; } ;
struct TYPE_24__ {int /*<<< orphan*/  time_base; TYPE_5__* codecpar; } ;
struct TYPE_23__ {int flags; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  TYPE_5__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_UNKNOWN ; 
 int AVFMT_NOFILE ; 
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AVMEDIA_TYPE_SUBTITLE ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int AV_ROUND_NEAR_INF ; 
 int AV_ROUND_PASS_MINMAX ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,char const*,int) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int**) ; 
 int FUNC5 (TYPE_4__*,TYPE_3__*) ; 
 int* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int FUNC8 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC10 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int FUNC12 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__**) ; 
 int FUNC15 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 TYPE_2__* FUNC17 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC18 (TYPE_4__**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC19 (TYPE_4__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC24(int argc, char **argv)
{
  AVFormatContext *input_format_context = NULL, *output_format_context = NULL;
  AVPacket packet;
  const char *in_filename, *out_filename;
  int ret, i;
  int stream_index = 0;
  int *streams_list = NULL;
  int number_of_streams = 0;
  int fragmented_mp4_options = 0;

  if (argc < 3) {
    FUNC23("You need to pass at least two parameters.\n");
    return -1;
  } else if (argc == 4) {
    fragmented_mp4_options = 1;
  }

  in_filename  = argv[1];
  out_filename = argv[2];

  if ((ret = FUNC18(&input_format_context, in_filename, NULL, NULL)) < 0) {
    FUNC22(stderr, "Could not open input file '%s'", in_filename);
    goto end;
  }
  if ((ret = FUNC15(input_format_context, NULL)) < 0) {
    FUNC22(stderr, "Failed to retrieve input stream information");
    goto end;
  }

  FUNC13(&output_format_context, NULL, NULL, out_filename);
  if (!output_format_context) {
    FUNC22(stderr, "Could not create output context\n");
    ret = AVERROR_UNKNOWN;
    goto end;
  }

  number_of_streams = input_format_context->nb_streams;
  streams_list = FUNC6(number_of_streams, sizeof(*streams_list));

  if (!streams_list) {
    ret = FUNC0(ENOMEM);
    goto end;
  }

  for (i = 0; i < input_format_context->nb_streams; i++) {
    AVStream *out_stream;
    AVStream *in_stream = input_format_context->streams[i];
    AVCodecParameters *in_codecpar = in_stream->codecpar;
    if (in_codecpar->codec_type != AVMEDIA_TYPE_AUDIO &&
        in_codecpar->codec_type != AVMEDIA_TYPE_VIDEO &&
        in_codecpar->codec_type != AVMEDIA_TYPE_SUBTITLE) {
      streams_list[i] = -1;
      continue;
    }
    streams_list[i] = stream_index++;
    out_stream = FUNC17(output_format_context, NULL);
    if (!out_stream) {
      FUNC22(stderr, "Failed allocating output stream\n");
      ret = AVERROR_UNKNOWN;
      goto end;
    }
    ret = FUNC12(out_stream->codecpar, in_codecpar);
    if (ret < 0) {
      FUNC22(stderr, "Failed to copy codec parameters\n");
      goto end;
    }
  }
  // https://ffmpeg.org/doxygen/trunk/group__lavf__misc.html#gae2645941f2dc779c307eb6314fd39f10
  FUNC2(output_format_context, 0, out_filename, 1);

  // unless it's a no file (we'll talk later about that) write to the disk (FLAG_WRITE)
  // but basically it's a way to save the file to a buffer so you can store it
  // wherever you want.
  if (!(output_format_context->oformat->flags & AVFMT_NOFILE)) {
    ret = FUNC21(&output_format_context->pb, out_filename, AVIO_FLAG_WRITE);
    if (ret < 0) {
      FUNC22(stderr, "Could not open output file '%s'", out_filename);
      goto end;
    }
  }
  AVDictionary* opts = NULL;

  if (fragmented_mp4_options) {
    // https://developer.mozilla.org/en-US/docs/Web/API/Media_Source_Extensions_API/Transcoding_assets_for_MSE
    FUNC1(&opts, "movflags", "frag_keyframe+empty_moov+default_base_moof", 0);
  }
  // https://ffmpeg.org/doxygen/trunk/group__lavf__encoding.html#ga18b7b10bb5b94c4842de18166bc677cb
  ret = FUNC19(output_format_context, &opts);
  if (ret < 0) {
    FUNC22(stderr, "Error occurred when opening output file\n");
    goto end;
  }
  while (1) {
    AVStream *in_stream, *out_stream;
    ret = FUNC8(input_format_context, &packet);
    if (ret < 0)
      break;
    in_stream  = input_format_context->streams[packet.stream_index];
    if (packet.stream_index >= number_of_streams || streams_list[packet.stream_index] < 0) {
      FUNC7(&packet);
      continue;
    }
    packet.stream_index = streams_list[packet.stream_index];
    out_stream = output_format_context->streams[packet.stream_index];
    /* copy packet */
    packet.pts = FUNC10(packet.pts, in_stream->time_base, out_stream->time_base, AV_ROUND_NEAR_INF|AV_ROUND_PASS_MINMAX);
    packet.dts = FUNC10(packet.dts, in_stream->time_base, out_stream->time_base, AV_ROUND_NEAR_INF|AV_ROUND_PASS_MINMAX);
    packet.duration = FUNC9(packet.duration, in_stream->time_base, out_stream->time_base);
    // https://ffmpeg.org/doxygen/trunk/structAVPacket.html#ab5793d8195cf4789dfb3913b7a693903
    packet.pos = -1;

    //https://ffmpeg.org/doxygen/trunk/group__lavf__encoding.html#ga37352ed2c63493c38219d935e71db6c1
    ret = FUNC5(output_format_context, &packet);
    if (ret < 0) {
      FUNC22(stderr, "Error muxing packet\n");
      break;
    }
    FUNC7(&packet);
  }
  //https://ffmpeg.org/doxygen/trunk/group__lavf__encoding.html#ga7f14007e7dc8f481f054b21614dfec13
  FUNC11(output_format_context);
end:
  FUNC14(&input_format_context);
  /* close output */
  if (output_format_context && !(output_format_context->oformat->flags & AVFMT_NOFILE))
    FUNC20(&output_format_context->pb);
  FUNC16(output_format_context);
  FUNC4(&streams_list);
  if (ret < 0 && ret != AVERROR_EOF) {
    FUNC22(stderr, "Error occurred: %s\n", FUNC3(ret));
    return 1;
  }
  return 0;
}