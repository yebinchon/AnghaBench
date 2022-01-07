; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-options.c_usage_with_options_internal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-options.c_usage_with_options_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32, i8*, i32, i32, i8*, i8* }

@PARSE_OPT_HELP = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"\0A usage: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"    or: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@PARSE_OPT_HIDDEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"-%c\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"--%s\00", align 1
@PARSE_OPT_OPTARG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"[=<n>]\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"[<n>]\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" <n>\00", align 1
@PARSE_OPT_NOARG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"[=<%s>]\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"[<%s>]\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c" <%s>\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"[=...]\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"[...]\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@USAGE_OPTS_WIDTH = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [7 x i8] c"%*s%s\0A\00", align 1
@USAGE_GAP = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usage_with_options_internal(i8** %0, %struct.option* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.option*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store %struct.option* %1, %struct.option** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = icmp ne i8** %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @PARSE_OPT_HELP, align 4
  store i32 %13, i32* %4, align 4
  br label %299

14:                                               ; preds = %3
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i32 1
  store i8** %17, i8*** %5, align 8
  %18 = load i8*, i8** %16, align 8
  %19 = call i64 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %32, %14
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %24, %20
  %31 = phi i1 [ false, %20 ], [ %29, %24 ]
  br i1 %31, label %32, label %38

32:                                               ; preds = %30
  %33 = load i32, i32* @stderr, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %35, i8*** %5, align 8
  %36 = load i8*, i8** %34, align 8
  %37 = call i64 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %20

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %43, %38
  %40 = load i8**, i8*** %5, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load i32, i32* @stderr, align 4
  %45 = load i8**, i8*** %5, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %52 = load i8**, i8*** %5, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %51, i8* %53)
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i32 1
  store i8** %56, i8*** %5, align 8
  br label %39

57:                                               ; preds = %39
  %58 = load %struct.option*, %struct.option** %6, align 8
  %59 = getelementptr inbounds %struct.option, %struct.option* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 136
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 @fputc(i8 signext 10, i32 %63)
  br label %65

65:                                               ; preds = %62, %57
  br label %66

66:                                               ; preds = %292, %65
  %67 = load %struct.option*, %struct.option** %6, align 8
  %68 = getelementptr inbounds %struct.option, %struct.option* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 137
  br i1 %70, label %71, label %295

71:                                               ; preds = %66
  %72 = load %struct.option*, %struct.option** %6, align 8
  %73 = getelementptr inbounds %struct.option, %struct.option* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 136
  br i1 %75, label %76, label %91

76:                                               ; preds = %71
  %77 = load i32, i32* @stderr, align 4
  %78 = call i32 @fputc(i8 signext 10, i32 %77)
  %79 = load %struct.option*, %struct.option** %6, align 8
  %80 = getelementptr inbounds %struct.option, %struct.option* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i8, i8* %81, align 1
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = load i32, i32* @stderr, align 4
  %86 = load %struct.option*, %struct.option** %6, align 8
  %87 = getelementptr inbounds %struct.option, %struct.option* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %84, %76
  br label %292

91:                                               ; preds = %71
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %91
  %95 = load %struct.option*, %struct.option** %6, align 8
  %96 = getelementptr inbounds %struct.option, %struct.option* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @PARSE_OPT_HIDDEN, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %292

102:                                              ; preds = %94, %91
  %103 = load i32, i32* @stderr, align 4
  %104 = call i64 (i32, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i64 %104, i64* %8, align 8
  %105 = load %struct.option*, %struct.option** %6, align 8
  %106 = getelementptr inbounds %struct.option, %struct.option* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %102
  %110 = load i32, i32* @stderr, align 4
  %111 = load %struct.option*, %struct.option** %6, align 8
  %112 = getelementptr inbounds %struct.option, %struct.option* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i64 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %113)
  %115 = load i64, i64* %8, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %8, align 8
  br label %122

117:                                              ; preds = %102
  %118 = load i32, i32* @stderr, align 4
  %119 = call i64 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %120 = load i64, i64* %8, align 8
  %121 = add i64 %120, %119
  store i64 %121, i64* %8, align 8
  br label %122

122:                                              ; preds = %117, %109
  %123 = load %struct.option*, %struct.option** %6, align 8
  %124 = getelementptr inbounds %struct.option, %struct.option* %123, i32 0, i32 4
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = load %struct.option*, %struct.option** %6, align 8
  %129 = getelementptr inbounds %struct.option, %struct.option* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load i32, i32* @stderr, align 4
  %134 = call i64 (i32, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %135 = load i64, i64* %8, align 8
  %136 = add i64 %135, %134
  store i64 %136, i64* %8, align 8
  br label %137

137:                                              ; preds = %132, %127, %122
  %138 = load %struct.option*, %struct.option** %6, align 8
  %139 = getelementptr inbounds %struct.option, %struct.option* %138, i32 0, i32 4
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %150

142:                                              ; preds = %137
  %143 = load i32, i32* @stderr, align 4
  %144 = load %struct.option*, %struct.option** %6, align 8
  %145 = getelementptr inbounds %struct.option, %struct.option* %144, i32 0, i32 4
  %146 = load i8*, i8** %145, align 8
  %147 = call i64 (i32, i8*, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %146)
  %148 = load i64, i64* %8, align 8
  %149 = add i64 %148, %147
  store i64 %149, i64* %8, align 8
  br label %150

150:                                              ; preds = %142, %137
  %151 = load %struct.option*, %struct.option** %6, align 8
  %152 = getelementptr inbounds %struct.option, %struct.option* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  switch i32 %153, label %266 [
    i32 141, label %154
    i32 133, label %155
    i32 129, label %155
    i32 134, label %155
    i32 128, label %155
    i32 138, label %184
    i32 130, label %193
    i32 137, label %267
    i32 136, label %267
    i32 140, label %267
    i32 139, label %267
    i32 135, label %267
    i32 131, label %267
    i32 132, label %267
  ]

154:                                              ; preds = %150
  br label %268

155:                                              ; preds = %150, %150, %150, %150
  %156 = load %struct.option*, %struct.option** %6, align 8
  %157 = getelementptr inbounds %struct.option, %struct.option* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %178

162:                                              ; preds = %155
  %163 = load %struct.option*, %struct.option** %6, align 8
  %164 = getelementptr inbounds %struct.option, %struct.option* %163, i32 0, i32 4
  %165 = load i8*, i8** %164, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load i32, i32* @stderr, align 4
  %169 = call i64 (i32, i8*, ...) @fprintf(i32 %168, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %170 = load i64, i64* %8, align 8
  %171 = add i64 %170, %169
  store i64 %171, i64* %8, align 8
  br label %177

172:                                              ; preds = %162
  %173 = load i32, i32* @stderr, align 4
  %174 = call i64 (i32, i8*, ...) @fprintf(i32 %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %175 = load i64, i64* %8, align 8
  %176 = add i64 %175, %174
  store i64 %176, i64* %8, align 8
  br label %177

177:                                              ; preds = %172, %167
  br label %183

178:                                              ; preds = %155
  %179 = load i32, i32* @stderr, align 4
  %180 = call i64 (i32, i8*, ...) @fprintf(i32 %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %181 = load i64, i64* %8, align 8
  %182 = add i64 %181, %180
  store i64 %182, i64* %8, align 8
  br label %183

183:                                              ; preds = %178, %177
  br label %268

184:                                              ; preds = %150
  %185 = load %struct.option*, %struct.option** %6, align 8
  %186 = getelementptr inbounds %struct.option, %struct.option* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @PARSE_OPT_NOARG, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  br label %268

192:                                              ; preds = %184
  br label %193

193:                                              ; preds = %150, %192
  %194 = load %struct.option*, %struct.option** %6, align 8
  %195 = getelementptr inbounds %struct.option, %struct.option* %194, i32 0, i32 5
  %196 = load i8*, i8** %195, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %236

198:                                              ; preds = %193
  %199 = load %struct.option*, %struct.option** %6, align 8
  %200 = getelementptr inbounds %struct.option, %struct.option* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %227

205:                                              ; preds = %198
  %206 = load %struct.option*, %struct.option** %6, align 8
  %207 = getelementptr inbounds %struct.option, %struct.option* %206, i32 0, i32 4
  %208 = load i8*, i8** %207, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %218

210:                                              ; preds = %205
  %211 = load i32, i32* @stderr, align 4
  %212 = load %struct.option*, %struct.option** %6, align 8
  %213 = getelementptr inbounds %struct.option, %struct.option* %212, i32 0, i32 5
  %214 = load i8*, i8** %213, align 8
  %215 = call i64 (i32, i8*, ...) @fprintf(i32 %211, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* %214)
  %216 = load i64, i64* %8, align 8
  %217 = add i64 %216, %215
  store i64 %217, i64* %8, align 8
  br label %226

218:                                              ; preds = %205
  %219 = load i32, i32* @stderr, align 4
  %220 = load %struct.option*, %struct.option** %6, align 8
  %221 = getelementptr inbounds %struct.option, %struct.option* %220, i32 0, i32 5
  %222 = load i8*, i8** %221, align 8
  %223 = call i64 (i32, i8*, ...) @fprintf(i32 %219, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* %222)
  %224 = load i64, i64* %8, align 8
  %225 = add i64 %224, %223
  store i64 %225, i64* %8, align 8
  br label %226

226:                                              ; preds = %218, %210
  br label %235

227:                                              ; preds = %198
  %228 = load i32, i32* @stderr, align 4
  %229 = load %struct.option*, %struct.option** %6, align 8
  %230 = getelementptr inbounds %struct.option, %struct.option* %229, i32 0, i32 5
  %231 = load i8*, i8** %230, align 8
  %232 = call i64 (i32, i8*, ...) @fprintf(i32 %228, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* %231)
  %233 = load i64, i64* %8, align 8
  %234 = add i64 %233, %232
  store i64 %234, i64* %8, align 8
  br label %235

235:                                              ; preds = %227, %226
  br label %265

236:                                              ; preds = %193
  %237 = load %struct.option*, %struct.option** %6, align 8
  %238 = getelementptr inbounds %struct.option, %struct.option* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %259

243:                                              ; preds = %236
  %244 = load %struct.option*, %struct.option** %6, align 8
  %245 = getelementptr inbounds %struct.option, %struct.option* %244, i32 0, i32 4
  %246 = load i8*, i8** %245, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %248, label %253

248:                                              ; preds = %243
  %249 = load i32, i32* @stderr, align 4
  %250 = call i64 (i32, i8*, ...) @fprintf(i32 %249, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %251 = load i64, i64* %8, align 8
  %252 = add i64 %251, %250
  store i64 %252, i64* %8, align 8
  br label %258

253:                                              ; preds = %243
  %254 = load i32, i32* @stderr, align 4
  %255 = call i64 (i32, i8*, ...) @fprintf(i32 %254, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %256 = load i64, i64* %8, align 8
  %257 = add i64 %256, %255
  store i64 %257, i64* %8, align 8
  br label %258

258:                                              ; preds = %253, %248
  br label %264

259:                                              ; preds = %236
  %260 = load i32, i32* @stderr, align 4
  %261 = call i64 (i32, i8*, ...) @fprintf(i32 %260, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %262 = load i64, i64* %8, align 8
  %263 = add i64 %262, %261
  store i64 %263, i64* %8, align 8
  br label %264

264:                                              ; preds = %259, %258
  br label %265

265:                                              ; preds = %264, %235
  br label %268

266:                                              ; preds = %150
  br label %267

267:                                              ; preds = %150, %150, %150, %150, %150, %150, %150, %266
  br label %268

268:                                              ; preds = %267, %265, %191, %183, %154
  %269 = load i64, i64* %8, align 8
  %270 = load i64, i64* @USAGE_OPTS_WIDTH, align 8
  %271 = icmp ule i64 %269, %270
  br i1 %271, label %272, label %277

272:                                              ; preds = %268
  %273 = load i64, i64* @USAGE_OPTS_WIDTH, align 8
  %274 = load i64, i64* %8, align 8
  %275 = sub i64 %273, %274
  %276 = trunc i64 %275 to i32
  store i32 %276, i32* %9, align 4
  br label %282

277:                                              ; preds = %268
  %278 = load i32, i32* @stderr, align 4
  %279 = call i32 @fputc(i8 signext 10, i32 %278)
  %280 = load i64, i64* @USAGE_OPTS_WIDTH, align 8
  %281 = trunc i64 %280 to i32
  store i32 %281, i32* %9, align 4
  br label %282

282:                                              ; preds = %277, %272
  %283 = load i32, i32* @stderr, align 4
  %284 = load i32, i32* %9, align 4
  %285 = load i8*, i8** @USAGE_GAP, align 8
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds i8, i8* %285, i64 %286
  %288 = load %struct.option*, %struct.option** %6, align 8
  %289 = getelementptr inbounds %struct.option, %struct.option* %288, i32 0, i32 1
  %290 = load i8*, i8** %289, align 8
  %291 = call i64 (i32, i8*, ...) @fprintf(i32 %283, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* %287, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* %290)
  br label %292

292:                                              ; preds = %282, %101, %90
  %293 = load %struct.option*, %struct.option** %6, align 8
  %294 = getelementptr inbounds %struct.option, %struct.option* %293, i32 1
  store %struct.option* %294, %struct.option** %6, align 8
  br label %66

295:                                              ; preds = %66
  %296 = load i32, i32* @stderr, align 4
  %297 = call i32 @fputc(i8 signext 10, i32 %296)
  %298 = load i32, i32* @PARSE_OPT_HELP, align 4
  store i32 %298, i32* %4, align 4
  br label %299

299:                                              ; preds = %295, %12
  %300 = load i32, i32* %4, align 4
  ret i32 %300
}

declare dso_local i64 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
