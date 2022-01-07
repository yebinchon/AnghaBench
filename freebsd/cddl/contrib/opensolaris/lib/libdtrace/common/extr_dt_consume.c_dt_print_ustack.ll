; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_print_ustack.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_print_ustack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64*, i32* }
%struct.ps_prochandle = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DTRACEOPT_STACKINDENT = common dso_local global i64 0, align 8
@DTRACEOPT_UNSET = common dso_local global i64 0, align 8
@_dtrace_stkindent = common dso_local global i32 0, align 4
@PGRAB_RDONLY = common dso_local global i32 0, align 4
@PGRAB_FORCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%s`%s+0x%llx\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s`%s\00", align 1
@MA_WRITE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"%s`0x%llx\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"  [ %s ]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_print_ustack(%struct.TYPE_13__* %0, i32* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.ps_prochandle*, align 8
  %23 = alloca %struct.TYPE_14__, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = bitcast i8* %29 to i64*
  store i64* %30, i64** %12, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @DTRACE_USTACK_NFRAMES(i64 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @DTRACE_USTACK_STRSIZE(i64 %33)
  store i32 %34, i32* %14, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 8
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  store i8* %40, i8** %15, align 8
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %5
  %44 = load i8*, i8** %15, align 8
  br label %46

45:                                               ; preds = %5
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i8* [ %44, %43 ], [ null, %45 ]
  store i8* %47, i8** %16, align 8
  store i32 0, i32* %17, align 4
  %48 = load i32, i32* @PATH_MAX, align 4
  %49 = zext i32 %48 to i64
  %50 = call i8* @llvm.stacksave()
  store i8* %50, i8** %18, align 8
  %51 = alloca i8, i64 %49, align 16
  store i64 %49, i64* %19, align 8
  %52 = load i32, i32* @PATH_MAX, align 4
  %53 = zext i32 %52 to i64
  %54 = alloca i8, i64 %53, align 16
  store i64 %53, i64* %20, align 8
  %55 = load i32, i32* @PATH_MAX, align 4
  %56 = mul nsw i32 %55, 2
  %57 = zext i32 %56 to i64
  %58 = alloca i8, i64 %57, align 16
  store i64 %57, i64* %21, align 8
  %59 = load i32, i32* %13, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  store i32 1, i32* %27, align 4
  br label %337

62:                                               ; preds = %46
  %63 = load i64*, i64** %12, align 8
  %64 = getelementptr inbounds i64, i64* %63, i32 1
  store i64* %64, i64** %12, align 8
  %65 = load i64, i64* %63, align 8
  store i64 %65, i64* %26, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 (%struct.TYPE_13__*, i32*, i8*, ...) @dt_printf(%struct.TYPE_13__* %66, i32* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %27, align 4
  br label %337

71:                                               ; preds = %62
  %72 = load i8*, i8** %9, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %75

75:                                               ; preds = %74, %71
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* @DTRACEOPT_STACKINDENT, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DTRACEOPT_UNSET, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %75
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* @DTRACEOPT_STACKINDENT, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %25, align 4
  br label %94

92:                                               ; preds = %75
  %93 = load i32, i32* @_dtrace_stkindent, align 4
  store i32 %93, i32* %25, align 4
  br label %94

94:                                               ; preds = %92, %84
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %101 = load i64, i64* %26, align 8
  %102 = load i32, i32* @PGRAB_RDONLY, align 4
  %103 = load i32, i32* @PGRAB_FORCE, align 4
  %104 = or i32 %102, %103
  %105 = call %struct.ps_prochandle* @dt_proc_grab(%struct.TYPE_13__* %100, i64 %101, i32 %104, i32 0)
  store %struct.ps_prochandle* %105, %struct.ps_prochandle** %22, align 8
  br label %107

106:                                              ; preds = %94
  store %struct.ps_prochandle* null, %struct.ps_prochandle** %22, align 8
  br label %107

107:                                              ; preds = %106, %99
  %108 = load %struct.ps_prochandle*, %struct.ps_prochandle** %22, align 8
  %109 = icmp ne %struct.ps_prochandle* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %112 = load %struct.ps_prochandle*, %struct.ps_prochandle** %22, align 8
  %113 = call i32 @dt_proc_lock(%struct.TYPE_13__* %111, %struct.ps_prochandle* %112)
  br label %114

114:                                              ; preds = %110, %107
  store i32 0, i32* %24, align 4
  br label %115

115:                                              ; preds = %322, %114
  %116 = load i32, i32* %24, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %115
  %120 = load i64*, i64** %12, align 8
  %121 = load i32, i32* %24, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br label %126

126:                                              ; preds = %119, %115
  %127 = phi i1 [ false, %115 ], [ %125, %119 ]
  br i1 %127, label %128, label %325

128:                                              ; preds = %126
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %130 = load i32*, i32** %8, align 8
  %131 = load i32, i32* %25, align 4
  %132 = call i32 (%struct.TYPE_13__*, i32*, i8*, ...) @dt_printf(%struct.TYPE_13__* %129, i32* %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %131, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i32 %132, i32* %17, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %325

135:                                              ; preds = %128
  %136 = load %struct.ps_prochandle*, %struct.ps_prochandle** %22, align 8
  %137 = icmp ne %struct.ps_prochandle* %136, null
  br i1 %137, label %138, label %183

138:                                              ; preds = %135
  %139 = load %struct.ps_prochandle*, %struct.ps_prochandle** %22, align 8
  %140 = load i64*, i64** %12, align 8
  %141 = load i32, i32* %24, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %140, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %49 to i32
  %146 = call i64 @Plookup_by_addr(%struct.ps_prochandle* %139, i64 %144, i8* %51, i32 %145, %struct.TYPE_14__* %23)
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %183

148:                                              ; preds = %138
  %149 = load %struct.ps_prochandle*, %struct.ps_prochandle** %22, align 8
  %150 = load i64*, i64** %12, align 8
  %151 = load i32, i32* %24, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = trunc i64 %53 to i32
  %156 = call i64 @Pobjname(%struct.ps_prochandle* %149, i64 %154, i8* %54, i32 %155)
  %157 = load i64*, i64** %12, align 8
  %158 = load i32, i32* %24, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp sgt i64 %161, %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %148
  %166 = trunc i64 %57 to i32
  %167 = call i8* @dt_basename(i8* %54)
  %168 = load i64*, i64** %12, align 8
  %169 = load i32, i32* %24, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = sub nsw i64 %172, %174
  %176 = inttoptr i64 %175 to i8*
  %177 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %58, i32 %166, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %167, i8* %51, i8* %176)
  br label %182

178:                                              ; preds = %148
  %179 = trunc i64 %57 to i32
  %180 = call i8* @dt_basename(i8* %54)
  %181 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %58, i32 %179, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %180, i8* %51)
  br label %182

182:                                              ; preds = %178, %165
  br label %255

183:                                              ; preds = %138, %135
  %184 = load i8*, i8** %16, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %221

186:                                              ; preds = %183
  %187 = load i8*, i8** %16, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 0
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %221

192:                                              ; preds = %186
  %193 = load i8*, i8** %16, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 0
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp ne i32 %196, 64
  br i1 %197, label %198, label %221

198:                                              ; preds = %192
  %199 = load %struct.ps_prochandle*, %struct.ps_prochandle** %22, align 8
  %200 = icmp ne %struct.ps_prochandle* %199, null
  br i1 %200, label %201, label %221

201:                                              ; preds = %198
  %202 = load %struct.ps_prochandle*, %struct.ps_prochandle** %22, align 8
  %203 = load i64*, i64** %12, align 8
  %204 = load i32, i32* %24, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %203, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = call %struct.TYPE_12__* @Paddr_to_map(%struct.ps_prochandle* %202, i64 %207)
  store %struct.TYPE_12__* %208, %struct.TYPE_12__** %28, align 8
  %209 = icmp eq %struct.TYPE_12__* %208, null
  br i1 %209, label %217, label %210

210:                                              ; preds = %201
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @MA_WRITE, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %210, %201
  %218 = trunc i64 %57 to i32
  %219 = load i8*, i8** %16, align 8
  %220 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %58, i32 %218, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %219)
  br label %254

221:                                              ; preds = %210, %198, %192, %186, %183
  %222 = load %struct.ps_prochandle*, %struct.ps_prochandle** %22, align 8
  %223 = icmp ne %struct.ps_prochandle* %222, null
  br i1 %223, label %224, label %244

224:                                              ; preds = %221
  %225 = load %struct.ps_prochandle*, %struct.ps_prochandle** %22, align 8
  %226 = load i64*, i64** %12, align 8
  %227 = load i32, i32* %24, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i64, i64* %226, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = trunc i64 %53 to i32
  %232 = call i64 @Pobjname(%struct.ps_prochandle* %225, i64 %230, i8* %54, i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %244

234:                                              ; preds = %224
  %235 = trunc i64 %57 to i32
  %236 = call i8* @dt_basename(i8* %54)
  %237 = load i64*, i64** %12, align 8
  %238 = load i32, i32* %24, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i64, i64* %237, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = inttoptr i64 %241 to i8*
  %243 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %58, i32 %235, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %236, i8* %242)
  br label %253

244:                                              ; preds = %224, %221
  %245 = trunc i64 %57 to i32
  %246 = load i64*, i64** %12, align 8
  %247 = load i32, i32* %24, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64, i64* %246, i64 %248
  %250 = load i64, i64* %249, align 8
  %251 = inttoptr i64 %250 to i8*
  %252 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %58, i32 %245, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %251)
  br label %253

253:                                              ; preds = %244, %234
  br label %254

254:                                              ; preds = %253, %217
  br label %255

255:                                              ; preds = %254, %182
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %257 = load i32*, i32** %8, align 8
  %258 = load i8*, i8** %9, align 8
  %259 = call i32 (%struct.TYPE_13__*, i32*, i8*, ...) @dt_printf(%struct.TYPE_13__* %256, i32* %257, i8* %258, i8* %58)
  store i32 %259, i32* %17, align 4
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %255
  br label %325

262:                                              ; preds = %255
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %264 = load i32*, i32** %8, align 8
  %265 = call i32 (%struct.TYPE_13__*, i32*, i8*, ...) @dt_printf(%struct.TYPE_13__* %263, i32* %264, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %265, i32* %17, align 4
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %262
  br label %325

268:                                              ; preds = %262
  %269 = load i8*, i8** %16, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %271, label %302

271:                                              ; preds = %268
  %272 = load i8*, i8** %16, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 0
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  %276 = icmp eq i32 %275, 64
  br i1 %276, label %277, label %302

277:                                              ; preds = %271
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %279 = load i32*, i32** %8, align 8
  %280 = load i32, i32* %25, align 4
  %281 = call i32 (%struct.TYPE_13__*, i32*, i8*, ...) @dt_printf(%struct.TYPE_13__* %278, i32* %279, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %280, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i32 %281, i32* %17, align 4
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %277
  br label %325

284:                                              ; preds = %277
  %285 = trunc i64 %57 to i32
  %286 = load i8*, i8** %16, align 8
  %287 = getelementptr inbounds i8, i8* %286, i64 1
  %288 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %58, i32 %285, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %287)
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %290 = load i32*, i32** %8, align 8
  %291 = load i8*, i8** %9, align 8
  %292 = call i32 (%struct.TYPE_13__*, i32*, i8*, ...) @dt_printf(%struct.TYPE_13__* %289, i32* %290, i8* %291, i8* %58)
  store i32 %292, i32* %17, align 4
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %284
  br label %325

295:                                              ; preds = %284
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %297 = load i32*, i32** %8, align 8
  %298 = call i32 (%struct.TYPE_13__*, i32*, i8*, ...) @dt_printf(%struct.TYPE_13__* %296, i32* %297, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %298, i32* %17, align 4
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %295
  br label %325

301:                                              ; preds = %295
  br label %302

302:                                              ; preds = %301, %271, %268
  %303 = load i8*, i8** %16, align 8
  %304 = icmp ne i8* %303, null
  br i1 %304, label %305, label %321

305:                                              ; preds = %302
  %306 = load i8*, i8** %16, align 8
  %307 = call i64 @strlen(i8* %306)
  %308 = add nsw i64 %307, 1
  %309 = load i8*, i8** %16, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 %308
  store i8* %310, i8** %16, align 8
  %311 = load i8*, i8** %16, align 8
  %312 = load i8*, i8** %15, align 8
  %313 = ptrtoint i8* %311 to i64
  %314 = ptrtoint i8* %312 to i64
  %315 = sub i64 %313, %314
  %316 = load i32, i32* %14, align 4
  %317 = sext i32 %316 to i64
  %318 = icmp sge i64 %315, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %305
  store i8* null, i8** %16, align 8
  br label %320

320:                                              ; preds = %319, %305
  br label %321

321:                                              ; preds = %320, %302
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %24, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %24, align 4
  br label %115

325:                                              ; preds = %300, %294, %283, %267, %261, %134, %126
  %326 = load %struct.ps_prochandle*, %struct.ps_prochandle** %22, align 8
  %327 = icmp ne %struct.ps_prochandle* %326, null
  br i1 %327, label %328, label %335

328:                                              ; preds = %325
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %330 = load %struct.ps_prochandle*, %struct.ps_prochandle** %22, align 8
  %331 = call i32 @dt_proc_unlock(%struct.TYPE_13__* %329, %struct.ps_prochandle* %330)
  %332 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %333 = load %struct.ps_prochandle*, %struct.ps_prochandle** %22, align 8
  %334 = call i32 @dt_proc_release(%struct.TYPE_13__* %332, %struct.ps_prochandle* %333)
  br label %335

335:                                              ; preds = %328, %325
  %336 = load i32, i32* %17, align 4
  store i32 %336, i32* %6, align 4
  store i32 1, i32* %27, align 4
  br label %337

337:                                              ; preds = %335, %70, %61
  %338 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %338)
  %339 = load i32, i32* %6, align 4
  ret i32 %339
}

declare dso_local i32 @DTRACE_USTACK_NFRAMES(i64) #1

declare dso_local i32 @DTRACE_USTACK_STRSIZE(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dt_printf(%struct.TYPE_13__*, i32*, i8*, ...) #1

declare dso_local %struct.ps_prochandle* @dt_proc_grab(%struct.TYPE_13__*, i64, i32, i32) #1

declare dso_local i32 @dt_proc_lock(%struct.TYPE_13__*, %struct.ps_prochandle*) #1

declare dso_local i64 @Plookup_by_addr(%struct.ps_prochandle*, i64, i8*, i32, %struct.TYPE_14__*) #1

declare dso_local i64 @Pobjname(%struct.ps_prochandle*, i64, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i8* @dt_basename(i8*) #1

declare dso_local %struct.TYPE_12__* @Paddr_to_map(%struct.ps_prochandle*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @dt_proc_unlock(%struct.TYPE_13__*, %struct.ps_prochandle*) #1

declare dso_local i32 @dt_proc_release(%struct.TYPE_13__*, %struct.ps_prochandle*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
