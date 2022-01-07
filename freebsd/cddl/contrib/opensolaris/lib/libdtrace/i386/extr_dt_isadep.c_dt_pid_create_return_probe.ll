; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/i386/extr_dt_isadep.c_dt_pid_create_return_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/i386/extr_dt_isadep.c_dt_pid_create_return_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps_prochandle = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i64, i32*, i32 }
%struct.TYPE_17__ = type { i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"mr sparkle: malloc() failed\0A\00", align 1
@DT_PROC_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"mr sparkle: Pread() failed\0A\00", align 1
@DTFTP_RETURN = common dso_local global i32 0, align 4
@DT_LEAVE = common dso_local global i64 0, align 8
@DT_RET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"leave/ret at %lx\0A\00", align 1
@DT_REP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"leave/rep ret at %lx\0A\00", align 1
@DT_MOVL_EBP_ESP = common dso_local global i64 0, align 8
@DT_POPL_EBP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"movl/popl/ret at %lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"movl/popl/rep ret at %lx\0A\00", align 1
@DT_RET16 = common dso_local global i64 0, align 8
@DT_JMP32 = common dso_local global i64 0, align 8
@DT_JMP8 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"return at offset %lx\0A\00", align 1
@FASTTRAPIOC_MAKEPROBE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"fasttrap probe creation ioctl failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_pid_create_return_probe(%struct.ps_prochandle* %0, %struct.TYPE_16__* %1, %struct.TYPE_15__* %2, %struct.TYPE_17__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ps_prochandle*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  store %struct.ps_prochandle* %0, %struct.ps_prochandle** %7, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %19 = call i32 @proc_getpid(%struct.ps_prochandle* %18)
  store i32 %19, i32* %16, align 4
  %20 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %21 = call signext i8 @proc_getmodel(%struct.ps_prochandle* %20)
  store i8 %21, i8* %17, align 1
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 4
  %26 = call i64* @calloc(i32 1, i32 %25)
  store i64* %26, i64** %12, align 8
  %27 = icmp eq i64* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = call i32 (i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @DT_PROC_ERR, align 4
  store i32 %30, i32* %6, align 4
  br label %525

31:                                               ; preds = %5
  %32 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %33 = load i64*, i64** %12, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @Pread(%struct.ps_prochandle* %32, i64* %33, i32 %36, i64 %39)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %31
  %46 = call i32 (i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i64*, i64** %12, align 8
  %48 = call i32 @free(i64* %47)
  %49 = load i32, i32* @DT_PROC_ERR, align 4
  store i32 %49, i32* %6, align 4
  br label %525

50:                                               ; preds = %31
  %51 = load i32, i32* @DTFTP_RETURN, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %69 = load i64*, i64** %12, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %72 = call i64 @dt_pid_has_jump_table(%struct.ps_prochandle* %67, %struct.TYPE_16__* %68, i64* %69, %struct.TYPE_15__* %70, %struct.TYPE_17__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %270

74:                                               ; preds = %50
  store i32 0, i32* %13, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %265, %74
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %269

83:                                               ; preds = %79
  %84 = load i64*, i64** %12, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %89 = load i32, i32* %16, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = load i8, i8* %17, align 1
  %97 = call i32 @dt_instr_size(i64* %87, %struct.TYPE_16__* %88, i32 %89, i64 %95, i8 signext %96)
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp sle i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %83
  br label %269

101:                                              ; preds = %83
  %102 = load i64*, i64** %12, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @DT_LEAVE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %132

109:                                              ; preds = %101
  %110 = load i64*, i64** %12, align 8
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %110, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @DT_RET, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %109
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 1
  %121 = call i32 (i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 1
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %128, align 8
  %131 = getelementptr inbounds i32, i32* %126, i64 %129
  store i32 %123, i32* %131, align 4
  store i32 2, i32* %15, align 4
  br label %264

132:                                              ; preds = %109, %101
  %133 = load i64*, i64** %12, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @DT_LEAVE, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %172

140:                                              ; preds = %132
  %141 = load i64*, i64** %12, align 8
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %141, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @DT_REP, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %172

149:                                              ; preds = %140
  %150 = load i64*, i64** %12, align 8
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, 2
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %150, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @DT_RET, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %172

158:                                              ; preds = %149
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %159, 1
  %161 = call i32 (i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, 1
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %168, align 8
  %171 = getelementptr inbounds i32, i32* %166, i64 %169
  store i32 %163, i32* %171, align 4
  store i32 3, i32* %15, align 4
  br label %263

172:                                              ; preds = %149, %140, %132
  %173 = load i64*, i64** %12, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @DT_MOVL_EBP_ESP, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %212

180:                                              ; preds = %172
  %181 = load i64*, i64** %12, align 8
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %182, 2
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %181, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @DT_POPL_EBP, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %212

189:                                              ; preds = %180
  %190 = load i64*, i64** %12, align 8
  %191 = load i32, i32* %13, align 4
  %192 = add nsw i32 %191, 3
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %190, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @DT_RET, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %212

198:                                              ; preds = %189
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 3
  %201 = call i32 (i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* %13, align 4
  %203 = add nsw i32 %202, 3
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %209, 1
  store i64 %210, i64* %208, align 8
  %211 = getelementptr inbounds i32, i32* %206, i64 %209
  store i32 %203, i32* %211, align 4
  store i32 4, i32* %15, align 4
  br label %262

212:                                              ; preds = %189, %180, %172
  %213 = load i64*, i64** %12, align 8
  %214 = load i32, i32* %13, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i64, i64* %213, i64 %215
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @DT_MOVL_EBP_ESP, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %261

220:                                              ; preds = %212
  %221 = load i64*, i64** %12, align 8
  %222 = load i32, i32* %13, align 4
  %223 = add nsw i32 %222, 2
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i64, i64* %221, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @DT_POPL_EBP, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %261

229:                                              ; preds = %220
  %230 = load i64*, i64** %12, align 8
  %231 = load i32, i32* %13, align 4
  %232 = add nsw i32 %231, 3
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %230, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @DT_REP, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %261

238:                                              ; preds = %229
  %239 = load i64*, i64** %12, align 8
  %240 = load i32, i32* %13, align 4
  %241 = add nsw i32 %240, 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i64, i64* %239, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @DT_RET, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %261

247:                                              ; preds = %238
  %248 = load i32, i32* %13, align 4
  %249 = add nsw i32 %248, 3
  %250 = call i32 (i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* %13, align 4
  %252 = add nsw i32 %251, 3
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 3
  %255 = load i32*, i32** %254, align 8
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = add nsw i64 %258, 1
  store i64 %259, i64* %257, align 8
  %260 = getelementptr inbounds i32, i32* %255, i64 %258
  store i32 %252, i32* %260, align 4
  store i32 5, i32* %15, align 4
  br label %261

261:                                              ; preds = %247, %238, %229, %220, %212
  br label %262

262:                                              ; preds = %261, %198
  br label %263

263:                                              ; preds = %262, %158
  br label %264

264:                                              ; preds = %263, %118
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %15, align 4
  %267 = load i32, i32* %13, align 4
  %268 = add nsw i32 %267, %266
  store i32 %268, i32* %13, align 4
  br label %79

269:                                              ; preds = %100, %79
  br label %497

270:                                              ; preds = %50
  store i32 0, i32* %13, align 4
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = trunc i64 %273 to i32
  store i32 %274, i32* %14, align 4
  br label %275

275:                                              ; preds = %492, %270
  %276 = load i32, i32* %13, align 4
  %277 = load i32, i32* %14, align 4
  %278 = icmp slt i32 %276, %277
  br i1 %278, label %279, label %496

279:                                              ; preds = %275
  %280 = load i64*, i64** %12, align 8
  %281 = load i32, i32* %13, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i64, i64* %280, i64 %282
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %285 = load i32, i32* %16, align 4
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load i32, i32* %13, align 4
  %290 = sext i32 %289 to i64
  %291 = add nsw i64 %288, %290
  %292 = load i8, i8* %17, align 1
  %293 = call i32 @dt_instr_size(i64* %283, %struct.TYPE_16__* %284, i32 %285, i64 %291, i8 signext %292)
  store i32 %293, i32* %15, align 4
  %294 = load i32, i32* %15, align 4
  %295 = icmp sle i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %279
  br label %496

297:                                              ; preds = %279
  %298 = load i32, i32* %15, align 4
  %299 = icmp eq i32 %298, 1
  br i1 %299, label %300, label %309

300:                                              ; preds = %297
  %301 = load i64*, i64** %12, align 8
  %302 = load i32, i32* %13, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i64, i64* %301, i64 %303
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @DT_RET, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %309

308:                                              ; preds = %300
  br label %480

309:                                              ; preds = %300, %297
  %310 = load i32, i32* %15, align 4
  %311 = icmp eq i32 %310, 2
  br i1 %311, label %312, label %330

312:                                              ; preds = %309
  %313 = load i64*, i64** %12, align 8
  %314 = load i32, i32* %13, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i64, i64* %313, i64 %315
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @DT_REP, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %330

320:                                              ; preds = %312
  %321 = load i64*, i64** %12, align 8
  %322 = load i32, i32* %13, align 4
  %323 = add nsw i32 %322, 1
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i64, i64* %321, i64 %324
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @DT_RET, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %320
  br label %480

330:                                              ; preds = %320, %312, %309
  %331 = load i32, i32* %15, align 4
  %332 = icmp eq i32 %331, 3
  br i1 %332, label %333, label %342

333:                                              ; preds = %330
  %334 = load i64*, i64** %12, align 8
  %335 = load i32, i32* %13, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i64, i64* %334, i64 %336
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* @DT_RET16, align 8
  %340 = icmp eq i64 %338, %339
  br i1 %340, label %341, label %342

341:                                              ; preds = %333
  br label %480

342:                                              ; preds = %333, %330
  %343 = load i32, i32* %15, align 4
  %344 = icmp eq i32 %343, 4
  br i1 %344, label %345, label %363

345:                                              ; preds = %342
  %346 = load i64*, i64** %12, align 8
  %347 = load i32, i32* %13, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i64, i64* %346, i64 %348
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* @DT_REP, align 8
  %352 = icmp eq i64 %350, %351
  br i1 %352, label %353, label %363

353:                                              ; preds = %345
  %354 = load i64*, i64** %12, align 8
  %355 = load i32, i32* %13, align 4
  %356 = add nsw i32 %355, 1
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i64, i64* %354, i64 %357
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @DT_RET16, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %363

362:                                              ; preds = %353
  br label %480

363:                                              ; preds = %353, %345, %342
  %364 = load i32, i32* %15, align 4
  %365 = icmp eq i32 %364, 5
  br i1 %365, label %366, label %392

366:                                              ; preds = %363
  %367 = load i64*, i64** %12, align 8
  %368 = load i32, i32* %13, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i64, i64* %367, i64 %369
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* @DT_JMP32, align 8
  %373 = icmp eq i64 %371, %372
  br i1 %373, label %374, label %392

374:                                              ; preds = %366
  %375 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %376 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = sext i32 %377 to i64
  %379 = load i32, i32* %13, align 4
  %380 = load i32, i32* %15, align 4
  %381 = add nsw i32 %379, %380
  %382 = sext i32 %381 to i64
  %383 = load i64*, i64** %12, align 8
  %384 = load i32, i32* %13, align 4
  %385 = add nsw i32 %384, 1
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i64, i64* %383, i64 %386
  %388 = load i64, i64* %387, align 8
  %389 = add nsw i64 %382, %388
  %390 = icmp ule i64 %378, %389
  br i1 %390, label %391, label %392

391:                                              ; preds = %374
  br label %480

392:                                              ; preds = %374, %366, %363
  %393 = load i32, i32* %15, align 4
  %394 = icmp eq i32 %393, 2
  br i1 %394, label %395, label %421

395:                                              ; preds = %392
  %396 = load i64*, i64** %12, align 8
  %397 = load i32, i32* %13, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i64, i64* %396, i64 %398
  %400 = load i64, i64* %399, align 8
  %401 = load i64, i64* @DT_JMP8, align 8
  %402 = icmp eq i64 %400, %401
  br i1 %402, label %403, label %421

403:                                              ; preds = %395
  %404 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %405 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = sext i32 %406 to i64
  %408 = load i32, i32* %13, align 4
  %409 = load i32, i32* %15, align 4
  %410 = add nsw i32 %408, %409
  %411 = sext i32 %410 to i64
  %412 = load i64*, i64** %12, align 8
  %413 = load i32, i32* %13, align 4
  %414 = add nsw i32 %413, 1
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i64, i64* %412, i64 %415
  %417 = load i64, i64* %416, align 8
  %418 = add nsw i64 %411, %417
  %419 = icmp ule i64 %407, %418
  br i1 %419, label %420, label %421

420:                                              ; preds = %403
  br label %480

421:                                              ; preds = %403, %395, %392
  %422 = load i32, i32* %15, align 4
  %423 = icmp eq i32 %422, 6
  br i1 %423, label %424, label %450

424:                                              ; preds = %421
  %425 = load i64*, i64** %12, align 8
  %426 = load i32, i32* %13, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i64, i64* %425, i64 %427
  %429 = load i64, i64* %428, align 8
  %430 = call i64 @DT_ISJ32(i64 %429)
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %450

432:                                              ; preds = %424
  %433 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %434 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = sext i32 %435 to i64
  %437 = load i32, i32* %13, align 4
  %438 = load i32, i32* %15, align 4
  %439 = add nsw i32 %437, %438
  %440 = sext i32 %439 to i64
  %441 = load i64*, i64** %12, align 8
  %442 = load i32, i32* %13, align 4
  %443 = add nsw i32 %442, 2
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i64, i64* %441, i64 %444
  %446 = load i64, i64* %445, align 8
  %447 = add nsw i64 %440, %446
  %448 = icmp ule i64 %436, %447
  br i1 %448, label %449, label %450

449:                                              ; preds = %432
  br label %480

450:                                              ; preds = %432, %424, %421
  %451 = load i32, i32* %15, align 4
  %452 = icmp eq i32 %451, 2
  br i1 %452, label %453, label %479

453:                                              ; preds = %450
  %454 = load i64*, i64** %12, align 8
  %455 = load i32, i32* %13, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i64, i64* %454, i64 %456
  %458 = load i64, i64* %457, align 8
  %459 = call i64 @DT_ISJ8(i64 %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %479

461:                                              ; preds = %453
  %462 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %463 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  %465 = sext i32 %464 to i64
  %466 = load i32, i32* %13, align 4
  %467 = load i32, i32* %15, align 4
  %468 = add nsw i32 %466, %467
  %469 = sext i32 %468 to i64
  %470 = load i64*, i64** %12, align 8
  %471 = load i32, i32* %13, align 4
  %472 = add nsw i32 %471, 1
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i64, i64* %470, i64 %473
  %475 = load i64, i64* %474, align 8
  %476 = add nsw i64 %469, %475
  %477 = icmp ule i64 %465, %476
  br i1 %477, label %478, label %479

478:                                              ; preds = %461
  br label %480

479:                                              ; preds = %461, %453, %450
  br label %492

480:                                              ; preds = %478, %449, %420, %391, %362, %341, %329, %308
  %481 = load i32, i32* %13, align 4
  %482 = call i32 (i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %481)
  %483 = load i32, i32* %13, align 4
  %484 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %485 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %484, i32 0, i32 3
  %486 = load i32*, i32** %485, align 8
  %487 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %488 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %487, i32 0, i32 2
  %489 = load i64, i64* %488, align 8
  %490 = add nsw i64 %489, 1
  store i64 %490, i64* %488, align 8
  %491 = getelementptr inbounds i32, i32* %486, i64 %489
  store i32 %483, i32* %491, align 4
  br label %492

492:                                              ; preds = %480, %479
  %493 = load i32, i32* %15, align 4
  %494 = load i32, i32* %13, align 4
  %495 = add nsw i32 %494, %493
  store i32 %495, i32* %13, align 4
  br label %275

496:                                              ; preds = %296, %275
  br label %497

497:                                              ; preds = %496, %269
  %498 = load i64*, i64** %12, align 8
  %499 = call i32 @free(i64* %498)
  %500 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %501 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %500, i32 0, i32 2
  %502 = load i64, i64* %501, align 8
  %503 = icmp sgt i64 %502, 0
  br i1 %503, label %504, label %520

504:                                              ; preds = %497
  %505 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %506 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 4
  %508 = load i32, i32* @FASTTRAPIOC_MAKEPROBE, align 4
  %509 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %510 = call i64 @ioctl(i32 %507, i32 %508, %struct.TYPE_15__* %509)
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %512, label %519

512:                                              ; preds = %504
  %513 = load i32, i32* @errno, align 4
  %514 = call i32 @strerror(i32 %513)
  %515 = call i32 (i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %514)
  %516 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %517 = load i32, i32* @errno, align 4
  %518 = call i32 @dt_set_errno(%struct.TYPE_16__* %516, i32 %517)
  store i32 %518, i32* %6, align 4
  br label %525

519:                                              ; preds = %504
  br label %520

520:                                              ; preds = %519, %497
  %521 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %522 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %521, i32 0, i32 2
  %523 = load i64, i64* %522, align 8
  %524 = trunc i64 %523 to i32
  store i32 %524, i32* %6, align 4
  br label %525

525:                                              ; preds = %520, %512, %45, %28
  %526 = load i32, i32* %6, align 4
  ret i32 %526
}

declare dso_local i32 @proc_getpid(%struct.ps_prochandle*) #1

declare dso_local signext i8 @proc_getmodel(%struct.ps_prochandle*) #1

declare dso_local i64* @calloc(i32, i32) #1

declare dso_local i32 @dt_dprintf(i8*, ...) #1

declare dso_local i32 @Pread(%struct.ps_prochandle*, i64*, i32, i64) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i64 @dt_pid_has_jump_table(%struct.ps_prochandle*, %struct.TYPE_16__*, i64*, %struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local i32 @dt_instr_size(i64*, %struct.TYPE_16__*, i32, i64, i8 signext) #1

declare dso_local i64 @DT_ISJ32(i64) #1

declare dso_local i64 @DT_ISJ8(i64) #1

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
