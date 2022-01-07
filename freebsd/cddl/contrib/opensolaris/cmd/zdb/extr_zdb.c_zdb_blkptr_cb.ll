; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_zdb_blkptr_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_zdb_blkptr_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64, i32, i32, i32 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_25__ = type { i64, i64, i64 }
%struct.TYPE_24__ = type { i64, i32, i32, %struct.TYPE_23__**, i64 }
%struct.TYPE_23__ = type { i32 }

@dump_opt = common dso_local global i32* null, align 8
@BP_SPRINTF_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"objset %llu object %llu level %lld offset 0x%llx %s\0A\00", align 1
@DMU_OT_NEWTYPE = common dso_local global i32 0, align 4
@ZDB_OT_OTHER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ZIO_FLAG_SCRUB = common dso_local global i32 0, align 4
@ZIO_FLAG_RAW = common dso_local global i32 0, align 4
@ZB_ZIL_LEVEL = common dso_local global i64 0, align 8
@ZIO_FLAG_SPECULATIVE = common dso_local global i32 0, align 4
@max_inflight = common dso_local global i64 0, align 8
@zdb_blkptr_done = common dso_local global i32 0, align 4
@ZIO_PRIORITY_ASYNC_READ = common dso_local global i32 0, align 4
@zdb_blkptr_cb.iters = internal global i32 0, align 4
@NANOSEC = common dso_local global i64 0, align 8
@ZB_TOTAL = common dso_local global i64 0, align 8
@ZDB_OT_TOTAL = common dso_local global i64 0, align 8
@NN_NUMBUF_SZ = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"\0D%5s completed (%4dMB/s) estimated time remaining: %uhr %02umin %02usec        \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, i32*, %struct.TYPE_27__*, %struct.TYPE_25__*, i32*, i8*)* @zdb_blkptr_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zdb_blkptr_cb(%struct.TYPE_26__* %0, i32* %1, %struct.TYPE_27__* %2, %struct.TYPE_25__* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [10 x i8], align 1
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %10, align 8
  store %struct.TYPE_25__* %3, %struct.TYPE_25__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %28, %struct.TYPE_24__** %14, align 8
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %30 = icmp eq %struct.TYPE_27__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %255

32:                                               ; preds = %6
  %33 = load i32*, i32** @dump_opt, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 98
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %35, 5
  br i1 %36, label %37, label %69

37:                                               ; preds = %32
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %37
  %43 = load i32, i32* @BP_SPRINTF_LEN, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %17, align 8
  %46 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %18, align 8
  %47 = trunc i64 %44 to i32
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %49 = call i32 @snprintf_blkptr(i8* %46, i32 %47, %struct.TYPE_27__* %48)
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32*, i32** %12, align 8
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %65 = call i64 @blkid2offset(i32* %62, %struct.TYPE_27__* %63, %struct.TYPE_25__* %64)
  %66 = trunc i64 %65 to i32
  %67 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %57, i32 %61, i32 %66, i8* %46)
  %68 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %68)
  br label %69

69:                                               ; preds = %42, %37, %32
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %71 = call i64 @BP_IS_HOLE(%struct.TYPE_27__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %255

74:                                               ; preds = %69
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %76 = call i32 @BP_GET_TYPE(%struct.TYPE_27__* %75)
  store i32 %76, i32* %15, align 4
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @DMU_OT_NEWTYPE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32, i32* @ZDB_OT_OTHER, align 4
  br label %88

86:                                               ; preds = %74
  %87 = load i32, i32* %15, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = call i32 @zdb_count_block(%struct.TYPE_24__* %77, i32* %78, %struct.TYPE_27__* %79, i32 %89)
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %92 = call i64 @BP_GET_LEVEL(%struct.TYPE_27__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* %15, align 4
  %96 = call i64 @DMU_OT_IS_METADATA(i32 %95)
  %97 = icmp ne i64 %96, 0
  br label %98

98:                                               ; preds = %94, %88
  %99 = phi i1 [ true, %88 ], [ %97, %94 ]
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %16, align 4
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %102 = call i32 @BP_IS_EMBEDDED(%struct.TYPE_27__* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %176, label %104

104:                                              ; preds = %98
  %105 = load i32*, i32** @dump_opt, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 99
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %107, 1
  br i1 %108, label %117, label %109

109:                                              ; preds = %104
  %110 = load i32*, i32** @dump_opt, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 99
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %176

114:                                              ; preds = %109
  %115 = load i32, i32* %16, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %176

117:                                              ; preds = %114, %104
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %119 = call i64 @BP_GET_PSIZE(%struct.TYPE_27__* %118)
  store i64 %119, i64* %19, align 8
  %120 = load i64, i64* %19, align 8
  %121 = load i32, i32* @B_FALSE, align 4
  %122 = call i32* @abd_alloc(i64 %120, i32 %121)
  store i32* %122, i32** %20, align 8
  %123 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %124 = load i32, i32* @ZIO_FLAG_SCRUB, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @ZIO_FLAG_RAW, align 4
  %127 = or i32 %125, %126
  store i32 %127, i32* %21, align 4
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @ZB_ZIL_LEVEL, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %117
  %134 = load i32, i32* @ZIO_FLAG_SPECULATIVE, align 4
  %135 = load i32, i32* %21, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %21, align 4
  br label %137

137:                                              ; preds = %133, %117
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 1
  %140 = call i32 @mutex_enter(i32* %139)
  br label %141

141:                                              ; preds = %147, %137
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @max_inflight, align 8
  %146 = icmp sgt i64 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 1
  %152 = call i32 @cv_wait(i32* %149, i32* %151)
  br label %141

153:                                              ; preds = %141
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %159, align 8
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 1
  %164 = call i32 @mutex_exit(i32* %163)
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %167 = load i32*, i32** %20, align 8
  %168 = load i64, i64* %19, align 8
  %169 = load i32, i32* @zdb_blkptr_done, align 4
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %171 = load i32, i32* @ZIO_PRIORITY_ASYNC_READ, align 4
  %172 = load i32, i32* %21, align 4
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %174 = call i32 @zio_read(i32* null, %struct.TYPE_26__* %165, %struct.TYPE_27__* %166, i32* %167, i64 %168, i32 %169, %struct.TYPE_24__* %170, i32 %171, i32 %172, %struct.TYPE_25__* %173)
  %175 = call i32 @zio_nowait(i32 %174)
  br label %176

176:                                              ; preds = %153, %114, %109, %98
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 4
  store i64 0, i64* %178, align 8
  %179 = load i32, i32* @zdb_blkptr_cb.iters, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* @zdb_blkptr_cb.iters, align 4
  %181 = icmp sgt i32 %180, 100
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  store i32 0, i32* @zdb_blkptr_cb.iters, align 4
  br label %184

183:                                              ; preds = %176
  store i32 0, i32* %7, align 4
  br label %255

184:                                              ; preds = %182
  %185 = load i32*, i32** @dump_opt, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 98
  %187 = load i32, i32* %186, align 4
  %188 = icmp slt i32 %187, 5
  br i1 %188, label %189, label %254

189:                                              ; preds = %184
  %190 = call i64 (...) @gethrtime()
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @NANOSEC, align 8
  %195 = add nsw i64 %193, %194
  %196 = icmp sgt i64 %190, %195
  br i1 %196, label %197, label %254

197:                                              ; preds = %189
  %198 = call i64 (...) @gethrtime()
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %22, align 4
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 3
  %202 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %201, align 8
  %203 = load i64, i64* @ZB_TOTAL, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %202, i64 %203
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %204, align 8
  %206 = load i64, i64* @ZDB_OT_TOTAL, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %24, align 4
  %210 = load i32, i32* %24, align 4
  %211 = load i32, i32* %22, align 4
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = sub nsw i32 %211, %214
  %216 = sdiv i32 %215, 1000
  %217 = sdiv i32 %216, 1000
  %218 = add nsw i32 1, %217
  %219 = sdiv i32 %210, %218
  %220 = add nsw i32 1, %219
  store i32 %220, i32* %25, align 4
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %24, align 4
  %225 = sub nsw i32 %223, %224
  %226 = sdiv i32 %225, 1024
  %227 = load i32, i32* %25, align 4
  %228 = sdiv i32 %226, %227
  store i32 %228, i32* %26, align 4
  %229 = load i32, i32* @NN_NUMBUF_SZ, align 4
  %230 = sext i32 %229 to i64
  %231 = icmp uge i64 10, %230
  %232 = zext i1 %231 to i32
  %233 = call i32 @CTASSERT(i32 %232)
  %234 = load i32, i32* %24, align 4
  %235 = getelementptr inbounds [10 x i8], [10 x i8]* %23, i64 0, i64 0
  %236 = call i32 @zfs_nicenum(i32 %234, i8* %235, i32 10)
  %237 = load i32, i32* @stderr, align 4
  %238 = getelementptr inbounds [10 x i8], [10 x i8]* %23, i64 0, i64 0
  %239 = load i32, i32* %25, align 4
  %240 = sdiv i32 %239, 1024
  %241 = load i32, i32* %26, align 4
  %242 = sdiv i32 %241, 60
  %243 = sdiv i32 %242, 60
  %244 = load i32, i32* %26, align 4
  %245 = sdiv i32 %244, 60
  %246 = srem i32 %245, 60
  %247 = load i32, i32* %26, align 4
  %248 = srem i32 %247, 60
  %249 = call i32 @fprintf(i32 %237, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i8* %238, i32 %240, i32 %243, i32 %246, i32 %248)
  %250 = load i32, i32* %22, align 4
  %251 = sext i32 %250 to i64
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 0
  store i64 %251, i64* %253, align 8
  br label %254

254:                                              ; preds = %197, %189, %184
  store i32 0, i32* %7, align 4
  br label %255

255:                                              ; preds = %254, %183, %73, %31
  %256 = load i32, i32* %7, align 4
  ret i32 %256
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf_blkptr(i8*, i32, %struct.TYPE_27__*) #2

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i8*) #2

declare dso_local i64 @blkid2offset(i32*, %struct.TYPE_27__*, %struct.TYPE_25__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i64 @BP_IS_HOLE(%struct.TYPE_27__*) #2

declare dso_local i32 @BP_GET_TYPE(%struct.TYPE_27__*) #2

declare dso_local i32 @zdb_count_block(%struct.TYPE_24__*, i32*, %struct.TYPE_27__*, i32) #2

declare dso_local i64 @BP_GET_LEVEL(%struct.TYPE_27__*) #2

declare dso_local i64 @DMU_OT_IS_METADATA(i32) #2

declare dso_local i32 @BP_IS_EMBEDDED(%struct.TYPE_27__*) #2

declare dso_local i64 @BP_GET_PSIZE(%struct.TYPE_27__*) #2

declare dso_local i32* @abd_alloc(i64, i32) #2

declare dso_local i32 @mutex_enter(i32*) #2

declare dso_local i32 @cv_wait(i32*, i32*) #2

declare dso_local i32 @mutex_exit(i32*) #2

declare dso_local i32 @zio_nowait(i32) #2

declare dso_local i32 @zio_read(i32*, %struct.TYPE_26__*, %struct.TYPE_27__*, i32*, i64, i32, %struct.TYPE_24__*, i32, i32, %struct.TYPE_25__*) #2

declare dso_local i64 @gethrtime(...) #2

declare dso_local i32 @CTASSERT(i32) #2

declare dso_local i32 @zfs_nicenum(i32, i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
