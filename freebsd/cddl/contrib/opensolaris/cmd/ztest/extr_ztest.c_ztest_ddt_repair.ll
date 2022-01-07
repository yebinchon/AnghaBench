; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_ddt_repair.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_ddt_repair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_20__ = type { i64, i64, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_21__ = type { i32* }

@ztest_shared = common dso_local global %struct.TYPE_16__* null, align 8
@ztest_spa = common dso_local global i32* null, align 8
@ZIO_DEDUPDITTO_MIN = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@DMU_OT_UINT64_OTHER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ztest_name_lock = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@ZFS_PROP_DEDUP = common dso_local global i32 0, align 4
@ZFS_PROP_COPIES = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@DMU_READ_NO_PREFETCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"dmu_buf_hold(%p, %llu, %llu) = %u\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@ZIO_PRIORITY_SYNC_WRITE = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ZIO_FLAG_INDUCE_DAMAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_ddt_repair(%struct.TYPE_18__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [1 x %struct.TYPE_17__], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_19__, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i64 %1, i64* %4, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** @ztest_shared, align 8
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %5, align 8
  %25 = load i32*, i32** @ztest_spa, align 8
  store i32* %25, i32** %6, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @spa_dedup_checksum(i32* %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* @ZIO_DEDUPDITTO_MIN, align 4
  %32 = mul nsw i32 2, %31
  store i32 %32, i32* %19, align 4
  %33 = call i64 (...) @ztest_random_blocksize()
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i64 @MIN(i64 %34, i32 2048)
  store i64 %35, i64* %10, align 8
  %36 = getelementptr inbounds [1 x %struct.TYPE_17__], [1 x %struct.TYPE_17__]* %8, i64 0, i64 0
  %37 = load i64, i64* %4, align 8
  %38 = load i32, i32* @FTAG, align 4
  %39 = load i32, i32* @DMU_OT_UINT64_OTHER, align 4
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @ztest_od_init(%struct.TYPE_17__* %36, i64 %37, i32 %38, i32 0, i32 %39, i64 %40, i32 0, i32 0)
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %43 = getelementptr inbounds [1 x %struct.TYPE_17__], [1 x %struct.TYPE_17__]* %8, i64 0, i64 0
  %44 = load i32, i32* @B_FALSE, align 4
  %45 = call i64 @ztest_object_init(%struct.TYPE_18__* %42, %struct.TYPE_17__* %43, i32 16, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %2
  br label %236

48:                                               ; preds = %2
  %49 = load i32, i32* @RW_WRITER, align 4
  %50 = call i32 @rw_enter(i32* @ztest_name_lock, i32 %49)
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ZFS_PROP_DEDUP, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @B_FALSE, align 4
  %57 = call i64 @ztest_dsl_prop_set_uint64(i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %48
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ZFS_PROP_COPIES, align 4
  %64 = load i32, i32* @B_FALSE, align 4
  %65 = call i64 @ztest_dsl_prop_set_uint64(i32 %62, i32 %63, i32 1, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59, %48
  %68 = call i32 @rw_exit(i32* @ztest_name_lock)
  br label %236

69:                                               ; preds = %59
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @dmu_objset_pool(i32* %70)
  %72 = load i32, i32* @FTAG, align 4
  %73 = call i32 @dsl_pool_config_enter(i32 %71, i32 %72)
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @dmu_objset_fast_stat(i32* %74, %struct.TYPE_19__* %20)
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @dmu_objset_pool(i32* %76)
  %78 = load i32, i32* @FTAG, align 4
  %79 = call i32 @dsl_pool_config_exit(i32 %77, i32 %78)
  %80 = getelementptr inbounds [1 x %struct.TYPE_17__], [1 x %struct.TYPE_17__]* %8, i64 0, i64 0
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 16
  store i64 %82, i64* %9, align 8
  %83 = getelementptr inbounds [1 x %struct.TYPE_17__], [1 x %struct.TYPE_17__]* %8, i64 0, i64 0
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %10, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = xor i64 %88, %90
  store i64 %91, i64* %12, align 8
  %92 = load i64, i64* %9, align 8
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @ASSERT(i32 %94)
  %96 = load i32*, i32** %7, align 8
  %97 = call i32* @dmu_tx_create(i32* %96)
  store i32* %97, i32** %16, align 8
  %98 = load i32*, i32** %16, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load i32, i32* %19, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %10, align 8
  %103 = mul nsw i64 %101, %102
  %104 = trunc i64 %103 to i32
  %105 = call i32 @dmu_tx_hold_write(i32* %98, i64 %99, i32 0, i32 %104)
  %106 = load i32*, i32** %16, align 8
  %107 = load i32, i32* @TXG_WAIT, align 4
  %108 = load i32, i32* @FTAG, align 4
  %109 = call i64 @ztest_tx_assign(i32* %106, i32 %107, i32 %108)
  store i64 %109, i64* %11, align 8
  %110 = load i64, i64* %11, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %69
  %113 = call i32 @rw_exit(i32* @ztest_name_lock)
  br label %236

114:                                              ; preds = %69
  store i32 0, i32* %21, align 4
  br label %115

115:                                              ; preds = %190, %114
  %116 = load i32, i32* %21, align 4
  %117 = load i32, i32* %19, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %193

119:                                              ; preds = %115
  %120 = load i32, i32* %21, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* %10, align 8
  %123 = mul nsw i64 %121, %122
  store i64 %123, i64* %22, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = load i64, i64* %9, align 8
  %126 = load i64, i64* %22, align 8
  %127 = load i32, i32* @FTAG, align 4
  %128 = load i32, i32* @DMU_READ_NO_PREFETCH, align 4
  %129 = call i32 @dmu_buf_hold(i32* %124, i64 %125, i64 %126, i32 %127, %struct.TYPE_20__** %15, i32 %128)
  store i32 %129, i32* %23, align 4
  %130 = load i32, i32* %23, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %119
  %133 = load i32, i32* @B_FALSE, align 4
  %134 = load i32*, i32** %7, align 8
  %135 = load i64, i64* %9, align 8
  %136 = load i64, i64* %22, align 8
  %137 = load i32, i32* %23, align 4
  %138 = call i32 @fatal(i32 %133, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %134, i64 %135, i64 %136, i32 %137)
  br label %139

139:                                              ; preds = %132, %119
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %22, align 8
  %144 = icmp eq i64 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @ASSERT(i32 %145)
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %10, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @ASSERT(i32 %152)
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %12, align 8
  %161 = call i64 @ztest_pattern_match(i32 %156, i64 %159, i64 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %172, label %163

163:                                              ; preds = %139
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @ztest_pattern_match(i32 %166, i64 %169, i64 0)
  %171 = icmp ne i64 %170, 0
  br label %172

172:                                              ; preds = %163, %139
  %173 = phi i1 [ true, %139 ], [ %171, %163 ]
  %174 = zext i1 %173 to i32
  %175 = call i32 @ASSERT(i32 %174)
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %177 = load i32*, i32** %16, align 8
  %178 = call i32 @dmu_buf_will_fill(%struct.TYPE_20__* %176, i32* %177)
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* %12, align 8
  %186 = call i32 @ztest_pattern_set(i32 %181, i64 %184, i64 %185)
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %188 = load i32, i32* @FTAG, align 4
  %189 = call i32 @dmu_buf_rele(%struct.TYPE_20__* %187, i32 %188)
  br label %190

190:                                              ; preds = %172
  %191 = load i32, i32* %21, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %21, align 4
  br label %115

193:                                              ; preds = %115
  %194 = load i32*, i32** %16, align 8
  %195 = call i32 @dmu_tx_commit(i32* %194)
  %196 = load i32*, i32** %6, align 8
  %197 = call i32 @spa_get_dsl(i32* %196)
  %198 = load i64, i64* %11, align 8
  %199 = call i32 @txg_wait_synced(i32 %197, i64 %198)
  %200 = load i32*, i32** %7, align 8
  %201 = load i64, i64* %9, align 8
  %202 = load i32, i32* @FTAG, align 4
  %203 = load i32, i32* @DMU_READ_NO_PREFETCH, align 4
  %204 = call i32 @dmu_buf_hold(i32* %200, i64 %201, i64 0, i32 %202, %struct.TYPE_20__** %15, i32 %203)
  %205 = call i32 @VERIFY0(i32 %204)
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %207 = bitcast %struct.TYPE_20__* %206 to %struct.TYPE_21__*
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %18, align 4
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %212 = load i32, i32* @FTAG, align 4
  %213 = call i32 @dmu_buf_rele(%struct.TYPE_20__* %211, i32 %212)
  %214 = call i64 @BP_GET_PSIZE(i32* %18)
  store i64 %214, i64* %13, align 8
  %215 = load i64, i64* %13, align 8
  %216 = load i32, i32* @B_TRUE, align 4
  %217 = call i32* @abd_alloc_linear(i64 %215, i32 %216)
  store i32* %217, i32** %17, align 8
  %218 = load i32*, i32** %17, align 8
  %219 = call i32 @abd_to_buf(i32* %218)
  %220 = load i64, i64* %13, align 8
  %221 = load i64, i64* %12, align 8
  %222 = xor i64 %221, -1
  %223 = call i32 @ztest_pattern_set(i32 %219, i64 %220, i64 %222)
  %224 = load i32*, i32** %6, align 8
  %225 = load i32*, i32** %17, align 8
  %226 = load i64, i64* %13, align 8
  %227 = load i32, i32* @ZIO_PRIORITY_SYNC_WRITE, align 4
  %228 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %229 = load i32, i32* @ZIO_FLAG_INDUCE_DAMAGE, align 4
  %230 = or i32 %228, %229
  %231 = call i32 @zio_rewrite(i32* null, i32* %224, i32 0, i32* %18, i32* %225, i64 %226, i32* null, i32* null, i32 %227, i32 %230, i32* null)
  %232 = call i32 @zio_wait(i32 %231)
  %233 = load i32*, i32** %17, align 8
  %234 = call i32 @abd_free(i32* %233)
  %235 = call i32 @rw_exit(i32* @ztest_name_lock)
  br label %236

236:                                              ; preds = %193, %112, %67, %47
  ret void
}

declare dso_local i32 @spa_dedup_checksum(i32*) #1

declare dso_local i64 @ztest_random_blocksize(...) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @ztest_od_init(%struct.TYPE_17__*, i64, i32, i32, i32, i64, i32, i32) #1

declare dso_local i64 @ztest_object_init(%struct.TYPE_18__*, %struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i64 @ztest_dsl_prop_set_uint64(i32, i32, i32, i32) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @dsl_pool_config_enter(i32, i32) #1

declare dso_local i32 @dmu_objset_pool(i32*) #1

declare dso_local i32 @dmu_objset_fast_stat(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @dsl_pool_config_exit(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @dmu_tx_create(i32*) #1

declare dso_local i32 @dmu_tx_hold_write(i32*, i64, i32, i32) #1

declare dso_local i64 @ztest_tx_assign(i32*, i32, i32) #1

declare dso_local i32 @dmu_buf_hold(i32*, i64, i64, i32, %struct.TYPE_20__**, i32) #1

declare dso_local i32 @fatal(i32, i8*, i32*, i64, i64, i32) #1

declare dso_local i64 @ztest_pattern_match(i32, i64, i64) #1

declare dso_local i32 @dmu_buf_will_fill(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @ztest_pattern_set(i32, i64, i64) #1

declare dso_local i32 @dmu_buf_rele(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @txg_wait_synced(i32, i64) #1

declare dso_local i32 @spa_get_dsl(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i64 @BP_GET_PSIZE(i32*) #1

declare dso_local i32* @abd_alloc_linear(i64, i32) #1

declare dso_local i32 @abd_to_buf(i32*) #1

declare dso_local i32 @zio_wait(i32) #1

declare dso_local i32 @zio_rewrite(i32*, i32*, i32, i32*, i32*, i64, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @abd_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
