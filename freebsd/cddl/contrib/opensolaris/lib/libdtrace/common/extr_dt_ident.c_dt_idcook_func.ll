; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_ident.c_dt_idcook_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_ident.c_dt_idcook_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i8*, i64, i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32, i32 }

@yypcb = common dso_local global %struct.TYPE_15__* null, align 8
@D_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"internal error: malformed entry for built-in function %s\0A\00", align 1
@EDT_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to resolve type of %s (%s): %s\0A\00", align 1
@DT_IDENT_AGGFUNC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@CTF_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"optional arg#%d may not follow variable arg#%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"required arg#%d may not follow optional arg#%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"failed to resolve type of %s arg#%d (%s): %s\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"( )\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_14__*, i32, i32*)* @dt_idcook_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_idcook_func(i32* %0, %struct.TYPE_14__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = icmp eq %struct.TYPE_13__* %18, null
  br i1 %19, label %20, label %336

20:                                               ; preds = %4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** @yypcb, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %9, align 8
  store i32 0, i32* %15, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = add nsw i32 %33, 1
  %35 = call i8* @alloca(i32 %34)
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strcpy(i8* %36, i8* %39)
  %41 = load i8*, i8** %12, align 8
  %42 = call i8* @strrchr(i8* %41, i8 signext 41)
  store i8* %42, i8** %14, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %20
  %45 = load i8*, i8** %14, align 8
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %44, %20
  %47 = load i8*, i8** %12, align 8
  %48 = call i8* @strchr(i8* %47, i8 signext 40)
  store i8* %48, i8** %13, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i8*, i8** %13, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %13, align 8
  store i8 0, i8* %51, align 1
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i8*, i8** %13, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i8*, i8** %14, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56, %53
  %60 = load i32, i32* @D_UNKNOWN, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i8*, i32, ...) @xyerror(i32 %60, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %59, %56
  %66 = load i8*, i8** %13, align 8
  store i8* %66, i8** %14, align 8
  br label %67

67:                                               ; preds = %81, %65
  %68 = load i8*, i8** %14, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load i8*, i8** %14, align 8
  %74 = load i8, i8* %73, align 1
  %75 = call i64 @isspace(i8 signext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  br label %84

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80
  %82 = load i8*, i8** %14, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %14, align 8
  br label %67

84:                                               ; preds = %77, %67
  %85 = load i8*, i8** %14, align 8
  %86 = call i8* @strchr(i8* %85, i8 signext 44)
  store i8* %86, i8** %14, align 8
  br label %87

87:                                               ; preds = %94, %84
  %88 = load i8*, i8** %14, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %14, align 8
  %90 = icmp ne i8* %88, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load i8*, i8** %14, align 8
  %93 = call i8* @strchr(i8* %92, i8 signext 44)
  store i8* %93, i8** %14, align 8
  br label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %15, align 4
  br label %87

97:                                               ; preds = %87
  %98 = call %struct.TYPE_13__* @malloc(i32 32)
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 5
  store %struct.TYPE_13__* %98, %struct.TYPE_13__** %100, align 8
  store %struct.TYPE_13__* %98, %struct.TYPE_13__** %11, align 8
  %101 = icmp eq %struct.TYPE_13__* %98, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** @yypcb, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @EDT_NOMEM, align 4
  %107 = call i32 @longjmp(i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %102, %97
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  store i32 -1, i32* %110, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  store i32 -1, i32* %112, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 3
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %117, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 4
  store i64 0, i64* %119, align 8
  %120 = load i32, i32* %15, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %108
  %123 = load i32, i32* %15, align 4
  %124 = call %struct.TYPE_16__* @calloc(i32 %123, i32 4)
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 3
  store %struct.TYPE_16__* %124, %struct.TYPE_16__** %126, align 8
  %127 = icmp eq %struct.TYPE_16__* %124, null
  br i1 %127, label %128, label %138

128:                                              ; preds = %122
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 5
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %130, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %132 = call i32 @free(%struct.TYPE_13__* %131)
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** @yypcb, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @EDT_NOMEM, align 4
  %137 = call i32 @longjmp(i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %128, %122, %108
  %139 = load i8*, i8** %12, align 8
  %140 = call i32 @dt_type_lookup(i8* %139, %struct.TYPE_12__* %10)
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %153

142:                                              ; preds = %138
  %143 = load i32, i32* @D_UNKNOWN, align 4
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load i8*, i8** %12, align 8
  %148 = load i32*, i32** %9, align 8
  %149 = load i32*, i32** %9, align 8
  %150 = call i32 @dtrace_errno(i32* %149)
  %151 = call i32 @dtrace_errmsg(i32* %148, i32 %150)
  %152 = call i32 (i32, i8*, i32, ...) @xyerror(i32 %143, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %146, i8* %147, i32 %151)
  br label %153

153:                                              ; preds = %142, %138
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @DT_IDENT_AGGFUNC, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %153
  %160 = load i32*, i32** %9, align 8
  %161 = call i32 @DT_DYN_CTFP(i32* %160)
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 8
  %164 = load i32*, i32** %9, align 8
  %165 = call i32 @DT_DYN_TYPE(i32* %164)
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 4
  br label %177

168:                                              ; preds = %153
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %168, %159
  store i32 0, i32* %15, align 4
  br label %178

178:                                              ; preds = %331, %177
  %179 = load i32, i32* %15, align 4
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %335

184:                                              ; preds = %178
  br label %185

185:                                              ; preds = %190, %184
  %186 = load i8*, i8** %13, align 8
  %187 = load i8, i8* %186, align 1
  %188 = call i64 @isspace(i8 signext %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load i8*, i8** %13, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %13, align 8
  br label %185

193:                                              ; preds = %185
  %194 = load i8*, i8** %13, align 8
  %195 = call i8* @strchr(i8* %194, i8 signext 44)
  store i8* %195, i8** %14, align 8
  %196 = icmp eq i8* %195, null
  br i1 %196, label %197, label %203

197:                                              ; preds = %193
  %198 = load i8*, i8** %13, align 8
  %199 = load i8*, i8** %13, align 8
  %200 = call i32 @strlen(i8* %199)
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %198, i64 %201
  store i8* %202, i8** %14, align 8
  br label %206

203:                                              ; preds = %193
  %204 = load i8*, i8** %14, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %14, align 8
  store i8 0, i8* %204, align 1
  br label %206

206:                                              ; preds = %203, %197
  %207 = load i8*, i8** %13, align 8
  %208 = call i64 @strcmp(i8* %207, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %214, label %210

210:                                              ; preds = %206
  %211 = load i8*, i8** %13, align 8
  %212 = call i64 @strcmp(i8* %211, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %239

214:                                              ; preds = %210, %206
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 3
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %216, align 8
  %218 = load i32, i32* %15, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 1
  store i32* null, i32** %221, align 8
  %222 = load i32, i32* @CTF_ERR, align 4
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 3
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %224, align 8
  %226 = load i32, i32* %15, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  store i32 %222, i32* %229, align 8
  %230 = load i8*, i8** %13, align 8
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp eq i32 %232, 46
  br i1 %233, label %234, label %238

234:                                              ; preds = %214
  %235 = load i32, i32* %15, align 4
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 8
  br label %238

238:                                              ; preds = %234, %214
  br label %331

239:                                              ; preds = %210
  %240 = load i8*, i8** %13, align 8
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp eq i32 %242, 91
  br i1 %243, label %244, label %286

244:                                              ; preds = %239
  %245 = load i8*, i8** %13, align 8
  %246 = load i8*, i8** %13, align 8
  %247 = call i32 @strlen(i8* %246)
  %248 = sub nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8, i8* %245, i64 %249
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp eq i32 %252, 93
  br i1 %253, label %254, label %286

254:                                              ; preds = %244
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %257, -1
  br i1 %258, label %259, label %268

259:                                              ; preds = %254
  %260 = load i32, i32* @D_UNKNOWN, align 4
  %261 = load i32, i32* %15, align 4
  %262 = add nsw i32 %261, 1
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = add nsw i32 %265, 1
  %267 = call i32 (i32, i8*, i32, ...) @xyerror(i32 %260, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %262, i32 %266)
  br label %268

268:                                              ; preds = %259, %254
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = icmp eq i32 %271, -1
  br i1 %272, label %273, label %277

273:                                              ; preds = %268
  %274 = load i32, i32* %15, align 4
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 1
  store i32 %274, i32* %276, align 4
  br label %277

277:                                              ; preds = %273, %268
  %278 = load i8*, i8** %13, align 8
  %279 = load i8*, i8** %13, align 8
  %280 = call i32 @strlen(i8* %279)
  %281 = sub nsw i32 %280, 1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8, i8* %278, i64 %282
  store i8 0, i8* %283, align 1
  %284 = load i8*, i8** %13, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %13, align 8
  br label %301

286:                                              ; preds = %244, %239
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = icmp ne i32 %289, -1
  br i1 %290, label %291, label %300

291:                                              ; preds = %286
  %292 = load i32, i32* @D_UNKNOWN, align 4
  %293 = load i32, i32* %15, align 4
  %294 = add nsw i32 %293, 1
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = add nsw i32 %297, 1
  %299 = call i32 (i32, i8*, i32, ...) @xyerror(i32 %292, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %294, i32 %298)
  br label %300

300:                                              ; preds = %291, %286
  br label %301

301:                                              ; preds = %300, %277
  %302 = load i8*, i8** %13, align 8
  %303 = call i32 @dt_type_lookup(i8* %302, %struct.TYPE_12__* %10)
  %304 = icmp eq i32 %303, -1
  br i1 %304, label %305, label %318

305:                                              ; preds = %301
  %306 = load i32, i32* @D_UNKNOWN, align 4
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* %15, align 4
  %311 = add nsw i32 %310, 1
  %312 = load i8*, i8** %13, align 8
  %313 = load i32*, i32** %9, align 8
  %314 = load i32*, i32** %9, align 8
  %315 = call i32 @dtrace_errno(i32* %314)
  %316 = call i32 @dtrace_errmsg(i32* %313, i32 %315)
  %317 = call i32 (i32, i8*, i32, ...) @xyerror(i32 %306, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %309, i32 %311, i8* %312, i32 %316)
  br label %318

318:                                              ; preds = %305, %301
  %319 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 3
  %321 = load %struct.TYPE_16__*, %struct.TYPE_16__** %320, align 8
  %322 = load i32, i32* %15, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %321, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @B_FALSE, align 4
  %330 = call i32 @dt_node_type_assign(%struct.TYPE_16__* %324, i32 %326, i32 %328, i32 %329)
  br label %331

331:                                              ; preds = %318, %238
  %332 = load i32, i32* %15, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %15, align 4
  %334 = load i8*, i8** %14, align 8
  store i8* %334, i8** %13, align 8
  br label %178

335:                                              ; preds = %178
  br label %336

336:                                              ; preds = %335, %4
  %337 = load i32*, i32** %5, align 8
  %338 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %339 = load i32, i32* %7, align 4
  %340 = load i32*, i32** %8, align 8
  %341 = call i32 @dt_idcook_sign(i32* %337, %struct.TYPE_14__* %338, i32 %339, i32* %340, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @xyerror(i32, i8*, i32, ...) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local %struct.TYPE_13__* @malloc(i32) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local %struct.TYPE_16__* @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

declare dso_local i32 @dt_type_lookup(i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @dtrace_errmsg(i32*, i32) #1

declare dso_local i32 @dtrace_errno(i32*) #1

declare dso_local i32 @DT_DYN_CTFP(i32*) #1

declare dso_local i32 @DT_DYN_TYPE(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dt_node_type_assign(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @dt_idcook_sign(i32*, %struct.TYPE_14__*, i32, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
