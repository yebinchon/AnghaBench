; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_link.c_dtrace_program_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_link.c_dtrace_program_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i8*, i32, i32, i8*, i32, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [179 x i8] c"dtrace: target object (%s) already exists. Please remove the target\0Adtrace: object and rebuild all the source objects if you wish to run the DTrace\0Adtrace: linking process again\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s -o %s -r\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to run %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"failed to link %s: %s failed due to signal %d\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"failed to link %s: %s exited with status %d\0A\00", align 1
@DOF_VERSION_2 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"%s.XXXXXX\00", align 1
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"failed to create temporary file %s: %s\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"failed to write %s: %s\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"invalid link type %u\0A\00", align 1
@DTRACE_O_LP64 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"%s -o %s -r %s %s\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"%s/drti.o\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@_dtrace_libdir = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_program_link(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, i32 %2, i8* %3, i32 %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8, align 1
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  %31 = load i32, i32* @PATH_MAX, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %14, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %15, align 8
  %35 = load i32, i32* @PATH_MAX, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %16, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* @R_OK, align 4
  %40 = call i64 @access(i8* %38, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %6
  %43 = load i32, i32* @stderr, align 4
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str, i64 0, i64 0), i8* %44)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %27, align 4
  br label %377

46:                                               ; preds = %6
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %48 = icmp eq %struct.TYPE_22__* %47, null
  br i1 %48, label %49, label %174

49:                                               ; preds = %46
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %28, align 8
  %50 = load i8*, i8** %28, align 8
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %23, i64 1, i8* %50, i8* %53, i8* %54)
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %24, align 8
  store i32 0, i32* %20, align 4
  br label %58

58:                                               ; preds = %72, %49
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load i8**, i8*** %13, align 8
  %64 = load i32, i32* %20, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @strlen(i8* %67)
  %69 = add nsw i64 %68, 1
  %70 = load i64, i64* %24, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %24, align 8
  br label %72

72:                                               ; preds = %62
  %73 = load i32, i32* %20, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %20, align 4
  br label %58

75:                                               ; preds = %58
  %76 = load i64, i64* %24, align 8
  %77 = call i8* @alloca(i64 %76)
  store i8* %77, i8** %22, align 8
  %78 = load i8*, i8** %22, align 8
  %79 = load i64, i64* %24, align 8
  %80 = load i8*, i8** %28, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %78, i64 %79, i8* %80, i8* %83, i8* %84)
  store i32 %85, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %86

86:                                               ; preds = %107, %75
  %87 = load i32, i32* %20, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %110

90:                                               ; preds = %86
  %91 = load i8*, i8** %22, align 8
  %92 = load i32, i32* %21, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i64, i64* %24, align 8
  %96 = load i32, i32* %21, align 4
  %97 = sext i32 %96 to i64
  %98 = sub i64 %95, %97
  %99 = load i8**, i8*** %13, align 8
  %100 = load i32, i32* %20, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %94, i64 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* %21, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %21, align 4
  br label %107

107:                                              ; preds = %90
  %108 = load i32, i32* %20, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %20, align 4
  br label %86

110:                                              ; preds = %86
  %111 = load i8*, i8** %22, align 8
  %112 = call i32 @system(i8* %111)
  store i32 %112, i32* %19, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* @errno, align 4
  %120 = call i64 @strerror(i32 %119)
  %121 = call i32 (%struct.TYPE_23__*, i32*, i32, i32*, i8*, ...) @dt_link_error(%struct.TYPE_23__* %115, i32* null, i32 -1, i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %118, i64 %120)
  store i32 %121, i32* %7, align 4
  store i32 1, i32* %27, align 4
  br label %377

122:                                              ; preds = %110
  %123 = load i32, i32* %19, align 4
  %124 = call i64 @WIFSIGNALED(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %128 = load i8*, i8** %11, align 8
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %19, align 4
  %133 = call i64 @WTERMSIG(i32 %132)
  %134 = call i32 (%struct.TYPE_23__*, i32*, i32, i32*, i8*, ...) @dt_link_error(%struct.TYPE_23__* %127, i32* null, i32 -1, i32* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %128, i8* %131, i64 %133)
  store i32 %134, i32* %7, align 4
  store i32 1, i32* %27, align 4
  br label %377

135:                                              ; preds = %122
  %136 = load i32, i32* %19, align 4
  %137 = call i64 @WEXITSTATUS(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %135
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %141 = load i8*, i8** %11, align 8
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load i32, i32* %19, align 4
  %146 = call i64 @WEXITSTATUS(i32 %145)
  %147 = call i32 (%struct.TYPE_23__*, i32*, i32, i32*, i8*, ...) @dt_link_error(%struct.TYPE_23__* %140, i32* null, i32 -1, i32* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %141, i8* %144, i64 %146)
  store i32 %147, i32* %7, align 4
  store i32 1, i32* %27, align 4
  br label %377

148:                                              ; preds = %135
  store i32 0, i32* %20, align 4
  br label %149

149:                                              ; preds = %170, %148
  %150 = load i32, i32* %20, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %173

153:                                              ; preds = %149
  %154 = load i8**, i8*** %13, align 8
  %155 = load i32, i32* %20, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = load i8*, i8** %11, align 8
  %160 = call i64 @strcmp(i8* %158, i8* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %153
  %163 = load i8**, i8*** %13, align 8
  %164 = load i32, i32* %20, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @unlink(i8* %167)
  br label %169

169:                                              ; preds = %162, %153
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %20, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %20, align 4
  br label %149

173:                                              ; preds = %149
  store i32 0, i32* %7, align 4
  store i32 1, i32* %27, align 4
  br label %377

174:                                              ; preds = %46
  store i32 0, i32* %20, align 4
  br label %175

175:                                              ; preds = %190, %174
  %176 = load i32, i32* %20, align 4
  %177 = load i32, i32* %12, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %193

179:                                              ; preds = %175
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %181 = load i8**, i8*** %13, align 8
  %182 = load i32, i32* %20, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8*, i8** %181, i64 %183
  %185 = load i8*, i8** %184, align 8
  %186 = call i64 @process_obj(%struct.TYPE_23__* %180, i8* %185, i32* %25)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %179
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %27, align 4
  br label %377

189:                                              ; preds = %179
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %20, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %20, align 4
  br label %175

193:                                              ; preds = %175
  %194 = load i32, i32* %25, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %193
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @DOF_VERSION_2, align 8
  %201 = icmp slt i64 %199, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %196
  %203 = load i64, i64* @DOF_VERSION_2, align 8
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 0
  store i64 %203, i64* %205, align 8
  br label %206

206:                                              ; preds = %202, %196, %193
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %209 = load i32, i32* %10, align 4
  %210 = call %struct.TYPE_25__* @dtrace_dof_create(%struct.TYPE_23__* %207, %struct.TYPE_22__* %208, i32 %209)
  store %struct.TYPE_25__* %210, %struct.TYPE_25__** %17, align 8
  %211 = icmp eq %struct.TYPE_25__* %210, null
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %27, align 4
  br label %377

213:                                              ; preds = %206
  %214 = load i8*, i8** %11, align 8
  %215 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %34, i64 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %214)
  %216 = load i32, i32* @O_CLOEXEC, align 4
  %217 = call i32 @mkostemp(i8* %34, i32 %216)
  store i32 %217, i32* %18, align 4
  %218 = icmp eq i32 %217, -1
  br i1 %218, label %219, label %224

219:                                              ; preds = %213
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %221 = load i32, i32* @errno, align 4
  %222 = call i64 @strerror(i32 %221)
  %223 = call i32 (%struct.TYPE_23__*, i32*, i32, i32*, i8*, ...) @dt_link_error(%struct.TYPE_23__* %220, i32* null, i32 -1, i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* %34, i64 %222)
  store i32 %223, i32* %7, align 4
  store i32 1, i32* %27, align 4
  br label %377

224:                                              ; preds = %213
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  switch i32 %227, label %262 [
    i32 129, label %228
    i32 128, label %261
  ]

228:                                              ; preds = %224
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %230 = load i32, i32* %18, align 4
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %233 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @dt_write(%struct.TYPE_23__* %229, i32 %230, %struct.TYPE_25__* %231, i32 %234)
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %237 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = icmp slt i32 %235, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %228
  %241 = load i32, i32* @errno, align 4
  store i32 %241, i32* %26, align 4
  br label %242

242:                                              ; preds = %240, %228
  %243 = load i32, i32* %18, align 4
  %244 = call i32 @close(i32 %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %242
  %247 = load i32, i32* %26, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %246
  %250 = load i32, i32* @errno, align 4
  store i32 %250, i32* %26, align 4
  br label %251

251:                                              ; preds = %249, %246, %242
  %252 = load i32, i32* %26, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %251
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %256 = load i8*, i8** %11, align 8
  %257 = load i32, i32* %26, align 4
  %258 = call i64 @strerror(i32 %257)
  %259 = call i32 (%struct.TYPE_23__*, i32*, i32, i32*, i8*, ...) @dt_link_error(%struct.TYPE_23__* %255, i32* null, i32 -1, i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %256, i64 %258)
  store i32 %259, i32* %7, align 4
  store i32 1, i32* %27, align 4
  br label %377

260:                                              ; preds = %251
  store i32 0, i32* %7, align 4
  store i32 1, i32* %27, align 4
  br label %377

261:                                              ; preds = %224
  br label %268

262:                                              ; preds = %224
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %264 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = call i32 (%struct.TYPE_23__*, i32*, i32, i32*, i8*, ...) @dt_link_error(%struct.TYPE_23__* %263, i32* null, i32 -1, i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %266)
  store i32 %267, i32* %7, align 4
  store i32 1, i32* %27, align 4
  br label %377

268:                                              ; preds = %261
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @DTRACE_O_LP64, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %268
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %277 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %278 = load i32, i32* %18, align 4
  %279 = call i32 @dump_elf64(%struct.TYPE_23__* %276, %struct.TYPE_25__* %277, i32 %278)
  store i32 %279, i32* %19, align 4
  br label %285

280:                                              ; preds = %268
  %281 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %283 = load i32, i32* %18, align 4
  %284 = call i32 @dump_elf32(%struct.TYPE_23__* %281, %struct.TYPE_25__* %282, i32 %283)
  store i32 %284, i32* %19, align 4
  br label %285

285:                                              ; preds = %280, %275
  %286 = load i32, i32* %19, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %285
  %289 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %290 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %291 = call i32 @dtrace_errno(%struct.TYPE_23__* %290)
  %292 = call i64 @strerror(i32 %291)
  %293 = call i32 (%struct.TYPE_23__*, i32*, i32, i32*, i8*, ...) @dt_link_error(%struct.TYPE_23__* %289, i32* null, i32 -1, i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %34, i64 %292)
  store i32 %293, i32* %7, align 4
  store i32 1, i32* %27, align 4
  br label %377

294:                                              ; preds = %285
  %295 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 8
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %368, label %299

299:                                              ; preds = %294
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8** %29, align 8
  %300 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %300, i32 0, i32 5
  %302 = call %struct.TYPE_24__* @dt_list_next(i32* %301)
  store %struct.TYPE_24__* %302, %struct.TYPE_24__** %30, align 8
  %303 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %304 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %303, i32 0, i32 0
  %305 = load i8*, i8** %304, align 8
  %306 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %37, i64 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* %305)
  %307 = load i8*, i8** %29, align 8
  %308 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %308, i32 0, i32 0
  %310 = load i8*, i8** %309, align 8
  %311 = load i8*, i8** %11, align 8
  %312 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %23, i64 1, i8* %307, i8* %310, i8* %311, i8* %34, i8* %37)
  %313 = add nsw i32 %312, 1
  %314 = sext i32 %313 to i64
  store i64 %314, i64* %24, align 8
  %315 = load i64, i64* %24, align 8
  %316 = call i8* @alloca(i64 %315)
  store i8* %316, i8** %22, align 8
  %317 = load i8*, i8** %22, align 8
  %318 = load i64, i64* %24, align 8
  %319 = load i8*, i8** %29, align 8
  %320 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %320, i32 0, i32 0
  %322 = load i8*, i8** %321, align 8
  %323 = load i8*, i8** %11, align 8
  %324 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %317, i64 %318, i8* %319, i8* %322, i8* %323, i8* %34, i8* %37)
  %325 = load i8*, i8** %22, align 8
  %326 = call i32 @system(i8* %325)
  store i32 %326, i32* %19, align 4
  %327 = icmp eq i32 %326, -1
  br i1 %327, label %328, label %337

328:                                              ; preds = %299
  %329 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %330 = load i32, i32* %18, align 4
  %331 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %331, i32 0, i32 0
  %333 = load i8*, i8** %332, align 8
  %334 = load i32, i32* @errno, align 4
  %335 = call i64 @strerror(i32 %334)
  %336 = call i32 (%struct.TYPE_23__*, i32*, i32, i32*, i8*, ...) @dt_link_error(%struct.TYPE_23__* %329, i32* null, i32 %330, i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %333, i64 %335)
  store i32 %336, i32* %26, align 4
  br label %372

337:                                              ; preds = %299
  %338 = load i32, i32* %19, align 4
  %339 = call i64 @WIFSIGNALED(i32 %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %351

341:                                              ; preds = %337
  %342 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %343 = load i32, i32* %18, align 4
  %344 = load i8*, i8** %11, align 8
  %345 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %345, i32 0, i32 0
  %347 = load i8*, i8** %346, align 8
  %348 = load i32, i32* %19, align 4
  %349 = call i64 @WTERMSIG(i32 %348)
  %350 = call i32 (%struct.TYPE_23__*, i32*, i32, i32*, i8*, ...) @dt_link_error(%struct.TYPE_23__* %342, i32* null, i32 %343, i32* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %344, i8* %347, i64 %349)
  store i32 %350, i32* %26, align 4
  br label %372

351:                                              ; preds = %337
  %352 = load i32, i32* %19, align 4
  %353 = call i64 @WEXITSTATUS(i32 %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %365

355:                                              ; preds = %351
  %356 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %357 = load i32, i32* %18, align 4
  %358 = load i8*, i8** %11, align 8
  %359 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %360 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %359, i32 0, i32 0
  %361 = load i8*, i8** %360, align 8
  %362 = load i32, i32* %19, align 4
  %363 = call i64 @WEXITSTATUS(i32 %362)
  %364 = call i32 (%struct.TYPE_23__*, i32*, i32, i32*, i8*, ...) @dt_link_error(%struct.TYPE_23__* %356, i32* null, i32 %357, i32* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %358, i8* %361, i64 %363)
  store i32 %364, i32* %26, align 4
  br label %372

365:                                              ; preds = %351
  %366 = load i32, i32* %18, align 4
  %367 = call i32 @close(i32 %366)
  br label %371

368:                                              ; preds = %294
  %369 = load i32, i32* %18, align 4
  %370 = call i32 @close(i32 %369)
  br label %371

371:                                              ; preds = %368, %365
  br label %372

372:                                              ; preds = %371, %355, %341, %328
  %373 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %374 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %375 = call i32 @dtrace_dof_destroy(%struct.TYPE_23__* %373, %struct.TYPE_25__* %374)
  %376 = load i32, i32* %26, align 4
  store i32 %376, i32* %7, align 4
  store i32 1, i32* %27, align 4
  br label %377

377:                                              ; preds = %372, %288, %262, %260, %254, %219, %212, %188, %173, %139, %126, %114, %42
  %378 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %378)
  %379 = load i32, i32* %7, align 4
  ret i32 %379
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @access(i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, ...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @alloca(i64) #2

declare dso_local i32 @system(i8*) #2

declare dso_local i32 @dt_link_error(%struct.TYPE_23__*, i32*, i32, i32*, i8*, ...) #2

declare dso_local i64 @strerror(i32) #2

declare dso_local i64 @WIFSIGNALED(i32) #2

declare dso_local i64 @WTERMSIG(i32) #2

declare dso_local i64 @WEXITSTATUS(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i64 @process_obj(%struct.TYPE_23__*, i8*, i32*) #2

declare dso_local %struct.TYPE_25__* @dtrace_dof_create(%struct.TYPE_23__*, %struct.TYPE_22__*, i32) #2

declare dso_local i32 @mkostemp(i8*, i32) #2

declare dso_local i32 @dt_write(%struct.TYPE_23__*, i32, %struct.TYPE_25__*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @dump_elf64(%struct.TYPE_23__*, %struct.TYPE_25__*, i32) #2

declare dso_local i32 @dump_elf32(%struct.TYPE_23__*, %struct.TYPE_25__*, i32) #2

declare dso_local i32 @dtrace_errno(%struct.TYPE_23__*) #2

declare dso_local %struct.TYPE_24__* @dt_list_next(i32*) #2

declare dso_local i32 @dtrace_dof_destroy(%struct.TYPE_23__*, %struct.TYPE_25__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
