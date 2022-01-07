; ModuleID = '/home/carl/AnghaBench/ffmpeg-libav-tutorial/extr_2_remuxing.c_main.c'
source_filename = "/home/carl/AnghaBench/ffmpeg-libav-tutorial/extr_2_remuxing.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_23__*, %struct.TYPE_24__** }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_25__ = type { i64, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [43 x i8] c"You need to pass at least two parameters.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not open input file '%s'\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to retrieve input stream information\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Could not create output context\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed allocating output stream\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to copy codec parameters\0A\00", align 1
@AVFMT_NOFILE = common dso_local global i32 0, align 4
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Could not open output file '%s'\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"movflags\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"frag_keyframe+empty_moov+default_base_moof\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Error occurred when opening output file\0A\00", align 1
@AV_ROUND_NEAR_INF = common dso_local global i32 0, align 4
@AV_ROUND_PASS_MINMAX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"Error muxing packet\0A\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"Error occurred: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_25__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca %struct.TYPE_24__*, align 8
  %19 = alloca %struct.TYPE_27__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_24__*, align 8
  %22 = alloca %struct.TYPE_24__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %7, align 8
  store i32 0, i32* %13, align 4
  store i32* null, i32** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 3
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %307

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 1, i32* %16, align 4
  br label %31

31:                                               ; preds = %30, %27
  br label %32

32:                                               ; preds = %31
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %9, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 2
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @avformat_open_input(%struct.TYPE_26__** %6, i8* %39, i32* null, i32* null)
  store i32 %40, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load i32, i32* @stderr, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  br label %274

46:                                               ; preds = %32
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %48 = call i32 @avformat_find_stream_info(%struct.TYPE_26__* %47, i32* null)
  store i32 %48, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %274

53:                                               ; preds = %46
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @avformat_alloc_output_context2(%struct.TYPE_26__** %7, i32* null, i32* null, i8* %54)
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %57 = icmp ne %struct.TYPE_26__* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @stderr, align 4
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %61, i32* %11, align 4
  br label %274

62:                                               ; preds = %53
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i32* @av_mallocz_array(i32 %66, i32 4)
  store i32* %67, i32** %14, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = call i32 @AVERROR(i32 %71)
  store i32 %72, i32* %11, align 4
  br label %274

73:                                               ; preds = %62
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %140, %73
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %143

80:                                               ; preds = %74
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %83, i64 %85
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %86, align 8
  store %struct.TYPE_24__* %87, %struct.TYPE_24__** %18, align 8
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %89, align 8
  store %struct.TYPE_27__* %90, %struct.TYPE_27__** %19, align 8
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %80
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %96
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @AVMEDIA_TYPE_SUBTITLE, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load i32*, i32** %14, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 -1, i32* %112, align 4
  br label %140

113:                                              ; preds = %102, %96, %80
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  %116 = load i32*, i32** %14, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %114, i32* %119, align 4
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %121 = call %struct.TYPE_24__* @avformat_new_stream(%struct.TYPE_26__* %120, i32* null)
  store %struct.TYPE_24__* %121, %struct.TYPE_24__** %17, align 8
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %123 = icmp ne %struct.TYPE_24__* %122, null
  br i1 %123, label %128, label %124

124:                                              ; preds = %113
  %125 = load i32, i32* @stderr, align 4
  %126 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %127 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %127, i32* %11, align 4
  br label %274

128:                                              ; preds = %113
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %130, align 8
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %133 = call i32 @avcodec_parameters_copy(%struct.TYPE_27__* %131, %struct.TYPE_27__* %132)
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load i32, i32* @stderr, align 4
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %274

139:                                              ; preds = %128
  br label %140

140:                                              ; preds = %139, %108
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  br label %74

143:                                              ; preds = %74
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %145 = load i8*, i8** %10, align 8
  %146 = call i32 @av_dump_format(%struct.TYPE_26__* %144, i32 0, i8* %145, i32 1)
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @AVFMT_NOFILE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %168, label %155

155:                                              ; preds = %143
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 1
  %158 = load i8*, i8** %10, align 8
  %159 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %160 = call i32 @avio_open(i32* %157, i8* %158, i32 %159)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %155
  %164 = load i32, i32* @stderr, align 4
  %165 = load i8*, i8** %10, align 8
  %166 = call i32 (i32, i8*, ...) @fprintf(i32 %164, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %165)
  br label %274

167:                                              ; preds = %155
  br label %168

168:                                              ; preds = %167, %143
  store i32* null, i32** %20, align 8
  %169 = load i32, i32* %16, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = call i32 @av_dict_set(i32** %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 0)
  br label %173

173:                                              ; preds = %171, %168
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %175 = call i32 @avformat_write_header(%struct.TYPE_26__* %174, i32** %20)
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %11, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load i32, i32* @stderr, align 4
  %180 = call i32 (i32, i8*, ...) @fprintf(i32 %179, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  br label %274

181:                                              ; preds = %173
  br label %182

182:                                              ; preds = %181, %208, %269
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %184 = call i32 @av_read_frame(%struct.TYPE_26__* %183, %struct.TYPE_25__* %8)
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  br label %271

188:                                              ; preds = %182
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 3
  %191 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %191, i64 %193
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %194, align 8
  store %struct.TYPE_24__* %195, %struct.TYPE_24__** %21, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* %15, align 4
  %199 = sext i32 %198 to i64
  %200 = icmp uge i64 %197, %199
  br i1 %200, label %208, label %201

201:                                              ; preds = %188
  %202 = load i32*, i32** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %201, %188
  %209 = call i32 @av_packet_unref(%struct.TYPE_25__* %8)
  br label %182

210:                                              ; preds = %201
  %211 = load i32*, i32** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  store i64 %216, i64* %217, align 8
  %218 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %218, i32 0, i32 3
  %220 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %220, i64 %222
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %223, align 8
  store %struct.TYPE_24__* %224, %struct.TYPE_24__** %22, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 4
  %226 = load i8*, i8** %225, align 8
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @AV_ROUND_NEAR_INF, align 4
  %234 = load i32, i32* @AV_ROUND_PASS_MINMAX, align 4
  %235 = or i32 %233, %234
  %236 = call i8* @av_rescale_q_rnd(i8* %226, i32 %229, i32 %232, i32 %235)
  %237 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 4
  store i8* %236, i8** %237, align 8
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 3
  %239 = load i8*, i8** %238, align 8
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @AV_ROUND_NEAR_INF, align 4
  %247 = load i32, i32* @AV_ROUND_PASS_MINMAX, align 4
  %248 = or i32 %246, %247
  %249 = call i8* @av_rescale_q_rnd(i8* %239, i32 %242, i32 %245, i32 %248)
  %250 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 3
  store i8* %249, i8** %250, align 8
  %251 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %257 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @av_rescale_q(i32 %252, i32 %255, i32 %258)
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 2
  store i32 %259, i32* %260, align 4
  %261 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 1
  store i32 -1, i32* %261, align 8
  %262 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %263 = call i32 @av_interleaved_write_frame(%struct.TYPE_26__* %262, %struct.TYPE_25__* %8)
  store i32 %263, i32* %11, align 4
  %264 = load i32, i32* %11, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %210
  %267 = load i32, i32* @stderr, align 4
  %268 = call i32 (i32, i8*, ...) @fprintf(i32 %267, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %271

269:                                              ; preds = %210
  %270 = call i32 @av_packet_unref(%struct.TYPE_25__* %8)
  br label %182

271:                                              ; preds = %266, %187
  %272 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %273 = call i32 @av_write_trailer(%struct.TYPE_26__* %272)
  br label %274

274:                                              ; preds = %271, %178, %163, %136, %124, %70, %58, %50, %42
  %275 = call i32 @avformat_close_input(%struct.TYPE_26__** %6)
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %277 = icmp ne %struct.TYPE_26__* %276, null
  br i1 %277, label %278, label %291

278:                                              ; preds = %274
  %279 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %279, i32 0, i32 2
  %281 = load %struct.TYPE_23__*, %struct.TYPE_23__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @AVFMT_NOFILE, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %291, label %287

287:                                              ; preds = %278
  %288 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %288, i32 0, i32 1
  %290 = call i32 @avio_closep(i32* %289)
  br label %291

291:                                              ; preds = %287, %278, %274
  %292 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %293 = call i32 @avformat_free_context(%struct.TYPE_26__* %292)
  %294 = call i32 @av_freep(i32** %14)
  %295 = load i32, i32* %11, align 4
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %306

297:                                              ; preds = %291
  %298 = load i32, i32* %11, align 4
  %299 = load i32, i32* @AVERROR_EOF, align 4
  %300 = icmp ne i32 %298, %299
  br i1 %300, label %301, label %306

301:                                              ; preds = %297
  %302 = load i32, i32* @stderr, align 4
  %303 = load i32, i32* %11, align 4
  %304 = call i8* @av_err2str(i32 %303)
  %305 = call i32 (i32, i8*, ...) @fprintf(i32 %302, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* %304)
  store i32 1, i32* %3, align 4
  br label %307

306:                                              ; preds = %297, %291
  store i32 0, i32* %3, align 4
  br label %307

307:                                              ; preds = %306, %301, %25
  %308 = load i32, i32* %3, align 4
  ret i32 %308
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @avformat_open_input(%struct.TYPE_26__**, i8*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @avformat_find_stream_info(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @avformat_alloc_output_context2(%struct.TYPE_26__**, i32*, i32*, i8*) #1

declare dso_local i32* @av_mallocz_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_24__* @avformat_new_stream(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @avcodec_parameters_copy(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @av_dump_format(%struct.TYPE_26__*, i32, i8*, i32) #1

declare dso_local i32 @avio_open(i32*, i8*, i32) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @avformat_write_header(%struct.TYPE_26__*, i32**) #1

declare dso_local i32 @av_read_frame(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_25__*) #1

declare dso_local i8* @av_rescale_q_rnd(i8*, i32, i32, i32) #1

declare dso_local i32 @av_rescale_q(i32, i32, i32) #1

declare dso_local i32 @av_interleaved_write_frame(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local i32 @av_write_trailer(%struct.TYPE_26__*) #1

declare dso_local i32 @avformat_close_input(%struct.TYPE_26__**) #1

declare dso_local i32 @avio_closep(i32*) #1

declare dso_local i32 @avformat_free_context(%struct.TYPE_26__*) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i8* @av_err2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
