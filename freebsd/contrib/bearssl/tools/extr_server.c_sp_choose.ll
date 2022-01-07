; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_server.c_sp_choose.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_server.c_sp_choose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i8*, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Client parameters:\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"   Maximum version:      \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"SSL 3.0\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"TLS 1.0\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"TLS 1.1\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"TLS 1.2\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"unknown (0x%04X)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"   Compatible cipher suites:\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"      %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"   Common sign+hash functions:\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"      with RSA:\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"      with ECDSA:\00", align 1
@BR_KEYTYPE_RSA = common dso_local global i32 0, align 4
@BR_KEYTYPE_EC = common dso_local global i32 0, align 4
@br_sha1_ID = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"Using: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.TYPE_11__*, %struct.TYPE_12__*)* @sp_choose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp_choose(i32** %0, %struct.TYPE_11__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8***, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [80 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [80 x i8], align 16
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %18 = load i32**, i32*** %5, align 8
  %19 = bitcast i32** %18 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %8, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = call i8*** @br_ssl_server_get_client_suites(%struct.TYPE_11__* %20, i64* %11)
  store i8*** %21, i8**** %9, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = call i32 @br_ssl_server_get_client_hashes(%struct.TYPE_11__* %22)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %104

28:                                               ; preds = %3
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %48 [
    i32 136, label %36
    i32 130, label %39
    i32 129, label %42
    i32 128, label %45
  ]

36:                                               ; preds = %28
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %54

39:                                               ; preds = %28
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %54

42:                                               ; preds = %28
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %54

45:                                               ; preds = %28
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %54

48:                                               ; preds = %28
  %49 = load i32, i32* @stderr, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %48, %45, %42, %39, %36
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  store i64 0, i64* %10, align 8
  br label %59

59:                                               ; preds = %75, %54
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load i8***, i8**** %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds i8**, i8*** %64, i64 %65
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %71 = call i32 @get_suite_name_ext(i8* %69, i8* %70, i32 80)
  %72 = load i32, i32* @stderr, align 4
  %73 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %63
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %10, align 8
  br label %59

78:                                               ; preds = %59
  %79 = load i32, i32* @stderr, align 4
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %81 = load i32, i32* %12, align 4
  %82 = and i32 %81, 255
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load i32, i32* @stderr, align 4
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @print_hashes(i32 %87)
  %89 = load i32, i32* @stderr, align 4
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %91

91:                                               ; preds = %84, %78
  %92 = load i32, i32* %12, align 4
  %93 = lshr i32 %92, 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load i32, i32* @stderr, align 4
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %98 = load i32, i32* %12, align 4
  %99 = lshr i32 %98, 8
  %100 = call i32 @print_hashes(i32 %99)
  %101 = load i32, i32* @stderr, align 4
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %103

103:                                              ; preds = %95, %91
  br label %104

104:                                              ; preds = %103, %3
  store i64 0, i64* %10, align 8
  br label %105

105:                                              ; preds = %297, %104
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* %11, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %300

109:                                              ; preds = %105
  %110 = load i8***, i8**** %9, align 8
  %111 = load i64, i64* %10, align 8
  %112 = getelementptr inbounds i8**, i8*** %110, i64 %111
  %113 = load i8**, i8*** %112, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 1
  %115 = load i8*, i8** %114, align 8
  %116 = ptrtoint i8* %115 to i32
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = lshr i32 %117, 12
  switch i32 %118, label %296 [
    i32 131, label %119
    i32 134, label %137
    i32 135, label %191
    i32 132, label %248
    i32 133, label %272
  ]

119:                                              ; preds = %109
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @BR_KEYTYPE_RSA, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %119
  %128 = load i8***, i8**** %9, align 8
  %129 = load i64, i64* %10, align 8
  %130 = getelementptr inbounds i8**, i8*** %128, i64 %129
  %131 = load i8**, i8*** %130, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 0
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  store i8* %133, i8** %135, align 8
  br label %301

136:                                              ; preds = %119
  br label %296

137:                                              ; preds = %109
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @BR_KEYTYPE_RSA, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %190

145:                                              ; preds = %137
  %146 = load i8***, i8**** %9, align 8
  %147 = load i64, i64* %10, align 8
  %148 = getelementptr inbounds i8**, i8*** %146, i64 %147
  %149 = load i8**, i8*** %148, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 0
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  store i8* %151, i8** %153, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = call i32 @br_ssl_engine_get_version(i32* %155)
  %157 = icmp slt i32 %156, 128
  br i1 %157, label %158, label %170

158:                                              ; preds = %145
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  store i32 1, i32* %165, align 8
  br label %169

166:                                              ; preds = %158
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  store i32 65280, i32* %168, align 8
  br label %169

169:                                              ; preds = %166, %163
  br label %189

170:                                              ; preds = %145
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @choose_hash(i32 %171)
  store i32 %172, i32* %15, align 4
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %170
  %178 = load i32, i32* %15, align 4
  %179 = shl i32 %178, 8
  %180 = add i32 %179, 1
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 8
  br label %188

183:                                              ; preds = %170
  %184 = load i32, i32* %15, align 4
  %185 = add i32 65280, %184
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 8
  br label %188

188:                                              ; preds = %183, %177
  br label %189

189:                                              ; preds = %188, %169
  br label %301

190:                                              ; preds = %137
  br label %296

191:                                              ; preds = %109
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 4
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @BR_KEYTYPE_EC, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %247

199:                                              ; preds = %191
  %200 = load i8***, i8**** %9, align 8
  %201 = load i64, i64* %10, align 8
  %202 = getelementptr inbounds i8**, i8*** %200, i64 %201
  %203 = load i8**, i8*** %202, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 0
  %205 = load i8*, i8** %204, align 8
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  store i8* %205, i8** %207, align 8
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 1
  %210 = call i32 @br_ssl_engine_get_version(i32* %209)
  %211 = icmp slt i32 %210, 128
  br i1 %211, label %212, label %226

212:                                              ; preds = %199
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 1
  store i32 515, i32* %219, align 8
  br label %225

220:                                              ; preds = %212
  %221 = load i32, i32* @br_sha1_ID, align 4
  %222 = add nsw i32 65280, %221
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 8
  br label %225

225:                                              ; preds = %220, %217
  br label %246

226:                                              ; preds = %199
  %227 = load i32, i32* %12, align 4
  %228 = lshr i32 %227, 8
  %229 = call i32 @choose_hash(i32 %228)
  store i32 %229, i32* %16, align 4
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %226
  %235 = load i32, i32* %16, align 4
  %236 = shl i32 %235, 8
  %237 = add i32 %236, 3
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 8
  br label %245

240:                                              ; preds = %226
  %241 = load i32, i32* %16, align 4
  %242 = add i32 65280, %241
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 1
  store i32 %242, i32* %244, align 8
  br label %245

245:                                              ; preds = %240, %234
  br label %246

246:                                              ; preds = %245, %225
  br label %301

247:                                              ; preds = %191
  br label %296

248:                                              ; preds = %109
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 4
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @BR_KEYTYPE_EC, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %271

256:                                              ; preds = %248
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @BR_KEYTYPE_RSA, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %271

262:                                              ; preds = %256
  %263 = load i8***, i8**** %9, align 8
  %264 = load i64, i64* %10, align 8
  %265 = getelementptr inbounds i8**, i8*** %263, i64 %264
  %266 = load i8**, i8*** %265, align 8
  %267 = getelementptr inbounds i8*, i8** %266, i64 0
  %268 = load i8*, i8** %267, align 8
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  store i8* %268, i8** %270, align 8
  br label %301

271:                                              ; preds = %256, %248
  br label %296

272:                                              ; preds = %109
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 4
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @BR_KEYTYPE_EC, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %295

280:                                              ; preds = %272
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @BR_KEYTYPE_EC, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %295

286:                                              ; preds = %280
  %287 = load i8***, i8**** %9, align 8
  %288 = load i64, i64* %10, align 8
  %289 = getelementptr inbounds i8**, i8*** %287, i64 %288
  %290 = load i8**, i8*** %289, align 8
  %291 = getelementptr inbounds i8*, i8** %290, i64 0
  %292 = load i8*, i8** %291, align 8
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 0
  store i8* %292, i8** %294, align 8
  br label %301

295:                                              ; preds = %280, %272
  br label %296

296:                                              ; preds = %109, %295, %271, %247, %190, %136
  br label %297

297:                                              ; preds = %296
  %298 = load i64, i64* %10, align 8
  %299 = add i64 %298, 1
  store i64 %299, i64* %10, align 8
  br label %105

300:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %326

301:                                              ; preds = %286, %262, %246, %189, %127
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 3
  store i32 %304, i32* %306, align 8
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 2
  store i32 %309, i32* %311, align 4
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %325

316:                                              ; preds = %301
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 0
  %319 = load i8*, i8** %318, align 8
  %320 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %321 = call i32 @get_suite_name_ext(i8* %319, i8* %320, i32 80)
  %322 = load i32, i32* @stderr, align 4
  %323 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %324 = call i32 (i32, i8*, ...) @fprintf(i32 %322, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %323)
  br label %325

325:                                              ; preds = %316, %301
  store i32 1, i32* %4, align 4
  br label %326

326:                                              ; preds = %325, %300
  %327 = load i32, i32* %4, align 4
  ret i32 %327
}

declare dso_local i8*** @br_ssl_server_get_client_suites(%struct.TYPE_11__*, i64*) #1

declare dso_local i32 @br_ssl_server_get_client_hashes(%struct.TYPE_11__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @get_suite_name_ext(i8*, i8*, i32) #1

declare dso_local i32 @print_hashes(i32) #1

declare dso_local i32 @br_ssl_engine_get_version(i32*) #1

declare dso_local i32 @choose_hash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
