; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_bin_to_res_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_bin_to_res_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_20__*, %struct.TYPE_12__* }
%struct.TYPE_20__ = type { %struct.TYPE_20__*, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { %struct.TYPE_18__*, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_18__*, i8*, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_19__*, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_19__*, i32, i32* }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [16 x i8] c"VS_VERSION_INFO\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"version length %d does not match resource length %lu\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"unexpected version type %d\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"unexpected fixed version information length %ld\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"fixed version info\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"unexpected fixed version signature %lu\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"unexpected fixed version info version %lu\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"version var info\00", align 1
@VERINFO_STRING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"StringFileInfo\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"unexpected stringfileinfo value length %ld\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"unexpected version stringtable value length %ld\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"unexpected version string length %ld != %ld + %ld\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"unexpected version string length %ld < %ld\00", align 1
@VERINFO_VAR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"VarFileInfo\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"unexpected varfileinfo value length %ld\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"version varfileinfo\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"unexpected version value length %ld\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"unexpected version string\00", align 1
@RES_TYPE_VERSIONINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (i32*, i32*, i32)* @bin_to_res_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @bin_to_res_version(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_20__**, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_19__**, align 8
  %21 = alloca %struct.TYPE_19__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_18__**, align 8
  %26 = alloca %struct.TYPE_18__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @get_version_header(i32* %27, i32* %28, i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32** null, i32* %7, i32* %8, i32* %9, i32* %10)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = call i32 (i32, ...) @fatal(i32 %35, i32 %36, i64 %38)
  br label %40

40:                                               ; preds = %34, %3
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (i32, ...) @fatal(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* %10, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %6, align 4
  %54 = sub i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %11, align 8
  br label %171

58:                                               ; preds = %47
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 52
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = call i32 (i32, ...) @fatal(i32 %62, i64 %64)
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32, i32* %6, align 4
  %68 = icmp ult i32 %67, 52
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %71 = call i32 @toosmall(i32 %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32*, i32** %4, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = call i8* @windres_get_32(i32* %73, i32* %74, i32 4)
  %76 = ptrtoint i8* %75 to i64
  store i64 %76, i64* %16, align 8
  %77 = load i64, i64* %16, align 8
  %78 = icmp ne i64 %77, 4277077181
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %81 = load i64, i64* %16, align 8
  %82 = call i32 (i32, ...) @fatal(i32 %80, i64 %81)
  br label %83

83:                                               ; preds = %79, %72
  %84 = load i32*, i32** %4, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  %87 = call i8* @windres_get_32(i32* %84, i32* %86, i32 4)
  %88 = ptrtoint i8* %87 to i64
  store i64 %88, i64* %17, align 8
  %89 = load i64, i64* %17, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %83
  %92 = load i64, i64* %17, align 8
  %93 = icmp ne i64 %92, 65536
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %96 = load i64, i64* %17, align 8
  %97 = call i32 (i32, ...) @fatal(i32 %95, i64 %96)
  br label %98

98:                                               ; preds = %94, %91, %83
  %99 = call i64 @res_alloc(i32 88)
  %100 = inttoptr i64 %99 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %100, %struct.TYPE_12__** %11, align 8
  %101 = load i32*, i32** %4, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 8
  %104 = call i8* @windres_get_32(i32* %101, i32* %103, i32 4)
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 10
  store i8* %104, i8** %106, align 8
  %107 = load i32*, i32** %4, align 8
  %108 = load i32*, i32** %5, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 12
  %110 = call i8* @windres_get_32(i32* %107, i32* %109, i32 4)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 9
  store i8* %110, i8** %112, align 8
  %113 = load i32*, i32** %4, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 16
  %116 = call i8* @windres_get_32(i32* %113, i32* %115, i32 4)
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 8
  store i8* %116, i8** %118, align 8
  %119 = load i32*, i32** %4, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 20
  %122 = call i8* @windres_get_32(i32* %119, i32* %121, i32 4)
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 7
  store i8* %122, i8** %124, align 8
  %125 = load i32*, i32** %4, align 8
  %126 = load i32*, i32** %5, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 24
  %128 = call i8* @windres_get_32(i32* %125, i32* %127, i32 4)
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 6
  store i8* %128, i8** %130, align 8
  %131 = load i32*, i32** %4, align 8
  %132 = load i32*, i32** %5, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 28
  %134 = call i8* @windres_get_32(i32* %131, i32* %133, i32 4)
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 5
  store i8* %134, i8** %136, align 8
  %137 = load i32*, i32** %4, align 8
  %138 = load i32*, i32** %5, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 32
  %140 = call i8* @windres_get_32(i32* %137, i32* %139, i32 4)
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 4
  store i8* %140, i8** %142, align 8
  %143 = load i32*, i32** %4, align 8
  %144 = load i32*, i32** %5, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 36
  %146 = call i8* @windres_get_32(i32* %143, i32* %145, i32 4)
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  %149 = load i32*, i32** %4, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 40
  %152 = call i8* @windres_get_32(i32* %149, i32* %151, i32 4)
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 2
  store i8* %152, i8** %154, align 8
  %155 = load i32*, i32** %4, align 8
  %156 = load i32*, i32** %5, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 44
  %158 = call i8* @windres_get_32(i32* %155, i32* %157, i32 4)
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  store i8* %158, i8** %160, align 8
  %161 = load i32*, i32** %4, align 8
  %162 = load i32*, i32** %5, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 48
  %164 = call i8* @windres_get_32(i32* %161, i32* %163, i32 4)
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  store i8* %164, i8** %166, align 8
  %167 = load i32*, i32** %5, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 52
  store i32* %168, i32** %5, align 8
  %169 = load i32, i32* %6, align 4
  %170 = sub i32 %169, 52
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %98, %57
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__** %12, %struct.TYPE_20__*** %13, align 8
  br label %172

172:                                              ; preds = %425, %171
  %173 = load i32, i32* %6, align 4
  %174 = icmp ugt i32 %173, 0
  br i1 %174, label %175, label %432

175:                                              ; preds = %172
  %176 = load i32, i32* %6, align 4
  %177 = icmp ult i32 %176, 8
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %180 = call i32 @toosmall(i32 %179)
  br label %181

181:                                              ; preds = %178, %175
  %182 = call i64 @res_alloc(i32 48)
  %183 = inttoptr i64 %182 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %183, %struct.TYPE_20__** %18, align 8
  %184 = load i32*, i32** %4, align 8
  %185 = load i32*, i32** %5, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 6
  %187 = call i8* @windres_get_16(i32* %184, i32* %186, i32 2)
  %188 = ptrtoint i8* %187 to i32
  store i32 %188, i32* %19, align 4
  %189 = load i32, i32* %19, align 4
  %190 = icmp eq i32 %189, 83
  br i1 %190, label %191, label %328

191:                                              ; preds = %181
  %192 = load i32, i32* @VERINFO_STRING, align 4
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  %195 = load i32*, i32** %4, align 8
  %196 = load i32*, i32** %5, align 8
  %197 = load i32, i32* %6, align 4
  %198 = call i32 @get_version_header(i32* %195, i32* %196, i32 %197, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32** null, i32* %7, i32* %8, i32* %9, i32* %10)
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %191
  %202 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  %203 = load i32, i32* %8, align 4
  %204 = zext i32 %203 to i64
  %205 = call i32 (i32, ...) @fatal(i32 %202, i64 %204)
  br label %206

206:                                              ; preds = %201, %191
  %207 = load i32, i32* %10, align 4
  %208 = load i32*, i32** %5, align 8
  %209 = zext i32 %207 to i64
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  store i32* %210, i32** %5, align 8
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* %6, align 4
  %213 = sub i32 %212, %211
  store i32 %213, i32* %6, align 4
  %214 = load i32*, i32** %4, align 8
  %215 = load i32*, i32** %5, align 8
  %216 = load i32, i32* %6, align 4
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 1
  %221 = call i32 @get_version_header(i32* %214, i32* %215, i32 %216, i8* null, i32** %220, i32* %7, i32* %8, i32* %9, i32* %10)
  %222 = load i32, i32* %8, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %206
  %225 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  %226 = load i32, i32* %8, align 4
  %227 = zext i32 %226 to i64
  %228 = call i32 (i32, ...) @fatal(i32 %225, i64 %227)
  br label %229

229:                                              ; preds = %224, %206
  %230 = load i32, i32* %10, align 4
  %231 = load i32*, i32** %5, align 8
  %232 = zext i32 %230 to i64
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  store i32* %233, i32** %5, align 8
  %234 = load i32, i32* %10, align 4
  %235 = load i32, i32* %6, align 4
  %236 = sub i32 %235, %234
  store i32 %236, i32* %6, align 4
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* %7, align 4
  %239 = sub i32 %238, %237
  store i32 %239, i32* %7, align 4
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 0
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %243, align 8
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 0
  store %struct.TYPE_19__** %247, %struct.TYPE_19__*** %20, align 8
  %248 = load i32, i32* %7, align 4
  %249 = add i32 %248, 3
  %250 = and i32 %249, -4
  store i32 %250, i32* %7, align 4
  br label %251

251:                                              ; preds = %323, %229
  %252 = load i32, i32* %7, align 4
  %253 = icmp ugt i32 %252, 0
  br i1 %253, label %254, label %327

254:                                              ; preds = %251
  %255 = call i64 @res_alloc(i32 24)
  %256 = inttoptr i64 %255 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %256, %struct.TYPE_19__** %21, align 8
  %257 = load i32*, i32** %4, align 8
  %258 = load i32*, i32** %5, align 8
  %259 = load i32, i32* %6, align 4
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 2
  %262 = call i32 @get_version_header(i32* %257, i32* %258, i32 %259, i8* null, i32** %261, i32* %22, i32* %8, i32* %9, i32* %10)
  %263 = load i32, i32* %22, align 4
  %264 = add i32 %263, 3
  %265 = and i32 %264, -4
  store i32 %265, i32* %22, align 4
  %266 = load i32, i32* %10, align 4
  %267 = load i32*, i32** %5, align 8
  %268 = zext i32 %266 to i64
  %269 = getelementptr inbounds i32, i32* %267, i64 %268
  store i32* %269, i32** %5, align 8
  %270 = load i32, i32* %10, align 4
  %271 = load i32, i32* %6, align 4
  %272 = sub i32 %271, %270
  store i32 %272, i32* %6, align 4
  %273 = load i32*, i32** %4, align 8
  %274 = load i32*, i32** %5, align 8
  %275 = load i32, i32* %6, align 4
  %276 = call i32 @get_unicode(i32* %273, i32* %274, i32 %275, i32* %23)
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 1
  store i32 %276, i32* %278, align 8
  %279 = load i32, i32* %23, align 4
  %280 = mul i32 %279, 2
  %281 = add i32 %280, 2
  store i32 %281, i32* %24, align 4
  %282 = load i32, i32* %24, align 4
  %283 = add i32 %282, 3
  %284 = and i32 %283, -4
  store i32 %284, i32* %24, align 4
  %285 = load i32, i32* %10, align 4
  %286 = load i32, i32* %24, align 4
  %287 = add i32 %285, %286
  %288 = load i32, i32* %22, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %290, label %299

290:                                              ; preds = %254
  %291 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  %292 = load i32, i32* %22, align 4
  %293 = zext i32 %292 to i64
  %294 = load i32, i32* %10, align 4
  %295 = zext i32 %294 to i64
  %296 = load i32, i32* %24, align 4
  %297 = zext i32 %296 to i64
  %298 = call i32 (i32, ...) @fatal(i32 %291, i64 %293, i64 %295, i64 %297)
  br label %299

299:                                              ; preds = %290, %254
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 0
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %301, align 8
  %302 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %303 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %20, align 8
  store %struct.TYPE_19__* %302, %struct.TYPE_19__** %303, align 8
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 0
  store %struct.TYPE_19__** %305, %struct.TYPE_19__*** %20, align 8
  %306 = load i32, i32* %24, align 4
  %307 = load i32*, i32** %5, align 8
  %308 = zext i32 %306 to i64
  %309 = getelementptr inbounds i32, i32* %307, i64 %308
  store i32* %309, i32** %5, align 8
  %310 = load i32, i32* %24, align 4
  %311 = load i32, i32* %6, align 4
  %312 = sub i32 %311, %310
  store i32 %312, i32* %6, align 4
  %313 = load i32, i32* %7, align 4
  %314 = load i32, i32* %22, align 4
  %315 = icmp ult i32 %313, %314
  br i1 %315, label %316, label %323

316:                                              ; preds = %299
  %317 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %318 = load i32, i32* %7, align 4
  %319 = zext i32 %318 to i64
  %320 = load i32, i32* %22, align 4
  %321 = zext i32 %320 to i64
  %322 = call i32 (i32, ...) @fatal(i32 %317, i64 %319, i64 %321)
  br label %323

323:                                              ; preds = %316, %299
  %324 = load i32, i32* %22, align 4
  %325 = load i32, i32* %7, align 4
  %326 = sub i32 %325, %324
  store i32 %326, i32* %7, align 4
  br label %251

327:                                              ; preds = %251
  br label %425

328:                                              ; preds = %181
  %329 = load i32, i32* %19, align 4
  %330 = icmp eq i32 %329, 86
  br i1 %330, label %331, label %421

331:                                              ; preds = %328
  %332 = load i32, i32* @VERINFO_VAR, align 4
  %333 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %334 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %333, i32 0, i32 2
  store i32 %332, i32* %334, align 8
  %335 = load i32*, i32** %4, align 8
  %336 = load i32*, i32** %5, align 8
  %337 = load i32, i32* %6, align 4
  %338 = call i32 @get_version_header(i32* %335, i32* %336, i32 %337, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32** null, i32* %7, i32* %8, i32* %9, i32* %10)
  %339 = load i32, i32* %8, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %346

341:                                              ; preds = %331
  %342 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0))
  %343 = load i32, i32* %8, align 4
  %344 = zext i32 %343 to i64
  %345 = call i32 (i32, ...) @fatal(i32 %342, i64 %344)
  br label %346

346:                                              ; preds = %341, %331
  %347 = load i32, i32* %10, align 4
  %348 = load i32*, i32** %5, align 8
  %349 = zext i32 %347 to i64
  %350 = getelementptr inbounds i32, i32* %348, i64 %349
  store i32* %350, i32** %5, align 8
  %351 = load i32, i32* %10, align 4
  %352 = load i32, i32* %6, align 4
  %353 = sub i32 %352, %351
  store i32 %353, i32* %6, align 4
  %354 = load i32*, i32** %4, align 8
  %355 = load i32*, i32** %5, align 8
  %356 = load i32, i32* %6, align 4
  %357 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %358 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %359, i32 0, i32 1
  %361 = call i32 @get_version_header(i32* %354, i32* %355, i32 %356, i8* null, i32** %360, i32* %7, i32* %8, i32* %9, i32* %10)
  %362 = load i32, i32* %10, align 4
  %363 = load i32*, i32** %5, align 8
  %364 = zext i32 %362 to i64
  %365 = getelementptr inbounds i32, i32* %363, i64 %364
  store i32* %365, i32** %5, align 8
  %366 = load i32, i32* %10, align 4
  %367 = load i32, i32* %6, align 4
  %368 = sub i32 %367, %366
  store i32 %368, i32* %6, align 4
  %369 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %370 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %371, i32 0, i32 0
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %372, align 8
  %373 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %374 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %375, i32 0, i32 0
  store %struct.TYPE_18__** %376, %struct.TYPE_18__*** %25, align 8
  br label %377

377:                                              ; preds = %417, %346
  %378 = load i32, i32* %8, align 4
  %379 = icmp ugt i32 %378, 0
  br i1 %379, label %380, label %420

380:                                              ; preds = %377
  %381 = load i32, i32* %6, align 4
  %382 = icmp ult i32 %381, 4
  br i1 %382, label %383, label %386

383:                                              ; preds = %380
  %384 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  %385 = call i32 @toosmall(i32 %384)
  br label %386

386:                                              ; preds = %383, %380
  %387 = call i64 @res_alloc(i32 24)
  %388 = inttoptr i64 %387 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %388, %struct.TYPE_18__** %26, align 8
  %389 = load i32*, i32** %4, align 8
  %390 = load i32*, i32** %5, align 8
  %391 = call i8* @windres_get_16(i32* %389, i32* %390, i32 2)
  %392 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %393 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %392, i32 0, i32 2
  store i8* %391, i8** %393, align 8
  %394 = load i32*, i32** %4, align 8
  %395 = load i32*, i32** %5, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 2
  %397 = call i8* @windres_get_16(i32* %394, i32* %396, i32 2)
  %398 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %399 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %398, i32 0, i32 1
  store i8* %397, i8** %399, align 8
  %400 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %401 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %400, i32 0, i32 0
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %401, align 8
  %402 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %403 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %25, align 8
  store %struct.TYPE_18__* %402, %struct.TYPE_18__** %403, align 8
  %404 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %405 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %404, i32 0, i32 0
  store %struct.TYPE_18__** %405, %struct.TYPE_18__*** %25, align 8
  %406 = load i32*, i32** %5, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 4
  store i32* %407, i32** %5, align 8
  %408 = load i32, i32* %6, align 4
  %409 = sub i32 %408, 4
  store i32 %409, i32* %6, align 4
  %410 = load i32, i32* %8, align 4
  %411 = icmp ult i32 %410, 4
  br i1 %411, label %412, label %417

412:                                              ; preds = %386
  %413 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0))
  %414 = load i32, i32* %8, align 4
  %415 = zext i32 %414 to i64
  %416 = call i32 (i32, ...) @fatal(i32 %413, i64 %415)
  br label %417

417:                                              ; preds = %412, %386
  %418 = load i32, i32* %8, align 4
  %419 = sub i32 %418, 4
  store i32 %419, i32* %8, align 4
  br label %377

420:                                              ; preds = %377
  br label %424

421:                                              ; preds = %328
  %422 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0))
  %423 = call i32 (i32, ...) @fatal(i32 %422)
  br label %424

424:                                              ; preds = %421, %420
  br label %425

425:                                              ; preds = %424, %327
  %426 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %427 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %426, i32 0, i32 0
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %427, align 8
  %428 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %429 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %13, align 8
  store %struct.TYPE_20__* %428, %struct.TYPE_20__** %429, align 8
  %430 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %431 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %430, i32 0, i32 0
  store %struct.TYPE_20__** %431, %struct.TYPE_20__*** %13, align 8
  br label %172

432:                                              ; preds = %172
  %433 = call i64 @res_alloc(i32 16)
  %434 = inttoptr i64 %433 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %434, %struct.TYPE_17__** %14, align 8
  %435 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %436 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %437 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %436, i32 0, i32 1
  store %struct.TYPE_12__* %435, %struct.TYPE_12__** %437, align 8
  %438 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %439 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %440 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %439, i32 0, i32 0
  store %struct.TYPE_20__* %438, %struct.TYPE_20__** %440, align 8
  %441 = call i64 @res_alloc(i32 16)
  %442 = inttoptr i64 %441 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %442, %struct.TYPE_21__** %15, align 8
  %443 = load i32, i32* @RES_TYPE_VERSIONINFO, align 4
  %444 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %445 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %444, i32 0, i32 1
  store i32 %443, i32* %445, align 8
  %446 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %447 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %448 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %448, i32 0, i32 0
  store %struct.TYPE_17__* %446, %struct.TYPE_17__** %449, align 8
  %450 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  ret %struct.TYPE_21__* %450
}

declare dso_local i32 @get_version_header(i32*, i32*, i32, i8*, i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fatal(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @toosmall(i32) #1

declare dso_local i8* @windres_get_32(i32*, i32*, i32) #1

declare dso_local i64 @res_alloc(i32) #1

declare dso_local i8* @windres_get_16(i32*, i32*, i32) #1

declare dso_local i32 @get_unicode(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
