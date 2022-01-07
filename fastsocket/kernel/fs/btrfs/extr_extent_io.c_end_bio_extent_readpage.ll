; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent_io.c_end_bio_extent_readpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent_io.c_end_bio_extent_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i64, i32, %struct.bio_vec* }
%struct.bio_vec = type { i64, i64, %struct.page* }
%struct.page = type { %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.extent_io_tree = type { i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 (%struct.page*, i64, i64, %struct.extent_state*, i32)*, i32 (%struct.page*, i32)* }
%struct.extent_state = type { i64 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_device = type { i32 }
%struct.TYPE_6__ = type { %struct.btrfs_root*, %struct.extent_io_tree }

@BIO_UPTODATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"end_bio_extent_readpage: bi_vcnt=%d, idx=%d, err=%d, mirror=%ld\0A\00", align 1
@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@EXTENT_LOCKED = common dso_local global i32 0, align 4
@BTRFS_DEV_STAT_CORRUPTION_ERRS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @end_bio_extent_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_bio_extent_readpage(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio_vec*, align 8
  %7 = alloca %struct.bio_vec*, align 8
  %8 = alloca %struct.extent_io_tree*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.extent_state*, align 8
  %16 = alloca %struct.extent_state*, align 8
  %17 = alloca %struct.btrfs_root*, align 8
  %18 = alloca %struct.btrfs_device*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load i32, i32* @BIO_UPTODATE, align 4
  %20 = load %struct.bio*, %struct.bio** %3, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 1
  %22 = call i32 @test_bit(i32 %19, i32* %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.bio*, %struct.bio** %3, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 4
  %25 = load %struct.bio_vec*, %struct.bio_vec** %24, align 8
  %26 = load %struct.bio*, %struct.bio** %3, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %25, i64 %29
  %31 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %30, i64 -1
  store %struct.bio_vec* %31, %struct.bio_vec** %6, align 8
  %32 = load %struct.bio*, %struct.bio** %3, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 4
  %34 = load %struct.bio_vec*, %struct.bio_vec** %33, align 8
  store %struct.bio_vec* %34, %struct.bio_vec** %7, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %2
  br label %39

39:                                               ; preds = %293, %38
  %40 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %41 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %40, i32 0, i32 2
  %42 = load %struct.page*, %struct.page** %41, align 8
  store %struct.page* %42, %struct.page** %14, align 8
  store %struct.extent_state* null, %struct.extent_state** %15, align 8
  %43 = load %struct.bio*, %struct.bio** %3, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.bio*, %struct.bio** %3, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.bio*, %struct.bio** %3, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @pr_debug(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48, i32 %49, i64 %52)
  %54 = load %struct.page*, %struct.page** %14, align 8
  %55 = getelementptr inbounds %struct.page, %struct.page* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.TYPE_6__* @BTRFS_I(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store %struct.extent_io_tree* %60, %struct.extent_io_tree** %8, align 8
  %61 = load %struct.page*, %struct.page** %14, align 8
  %62 = getelementptr inbounds %struct.page, %struct.page* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %65 = shl i64 %63, %64
  %66 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %67 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %72 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = sub nsw i64 %74, 1
  store i64 %75, i64* %10, align 8
  %76 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %77 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %39
  %81 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %82 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i32 1, i32* %11, align 4
  br label %88

87:                                               ; preds = %80, %39
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %87, %86
  %89 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %90 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %89, i32 1
  store %struct.bio_vec* %90, %struct.bio_vec** %7, align 8
  %91 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %92 = icmp ule %struct.bio_vec* %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %95 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %94, i32 0, i32 2
  %96 = load %struct.page*, %struct.page** %95, align 8
  %97 = getelementptr inbounds %struct.page, %struct.page* %96, i32 0, i32 1
  %98 = call i32 @prefetchw(i32* %97)
  br label %99

99:                                               ; preds = %93, %88
  %100 = load %struct.extent_io_tree*, %struct.extent_io_tree** %8, align 8
  %101 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %100, i32 0, i32 2
  %102 = call i32 @spin_lock(i32* %101)
  %103 = load %struct.extent_io_tree*, %struct.extent_io_tree** %8, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load i32, i32* @EXTENT_LOCKED, align 4
  %106 = call %struct.extent_state* @find_first_extent_bit_state(%struct.extent_io_tree* %103, i64 %104, i32 %105)
  store %struct.extent_state* %106, %struct.extent_state** %16, align 8
  %107 = load %struct.extent_state*, %struct.extent_state** %16, align 8
  %108 = icmp ne %struct.extent_state* %107, null
  br i1 %108, label %109, label %118

109:                                              ; preds = %99
  %110 = load %struct.extent_state*, %struct.extent_state** %16, align 8
  %111 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load %struct.extent_state*, %struct.extent_state** %16, align 8
  %117 = call i32 @cache_state(%struct.extent_state* %116, %struct.extent_state** %15)
  br label %118

118:                                              ; preds = %115, %109, %99
  %119 = load %struct.extent_io_tree*, %struct.extent_io_tree** %8, align 8
  %120 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %119, i32 0, i32 2
  %121 = call i32 @spin_unlock(i32* %120)
  %122 = load %struct.bio*, %struct.bio** %3, align 8
  %123 = getelementptr inbounds %struct.bio, %struct.bio* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %179

128:                                              ; preds = %118
  %129 = load %struct.extent_io_tree*, %struct.extent_io_tree** %8, align 8
  %130 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %129, i32 0, i32 1
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = icmp ne %struct.TYPE_5__* %131, null
  br i1 %132, label %133, label %179

133:                                              ; preds = %128
  %134 = load %struct.extent_io_tree*, %struct.extent_io_tree** %8, align 8
  %135 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %134, i32 0, i32 1
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32 (%struct.page*, i64, i64, %struct.extent_state*, i32)*, i32 (%struct.page*, i64, i64, %struct.extent_state*, i32)** %137, align 8
  %139 = icmp ne i32 (%struct.page*, i64, i64, %struct.extent_state*, i32)* %138, null
  br i1 %139, label %140, label %179

140:                                              ; preds = %133
  %141 = load %struct.extent_io_tree*, %struct.extent_io_tree** %8, align 8
  %142 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %141, i32 0, i32 1
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32 (%struct.page*, i64, i64, %struct.extent_state*, i32)*, i32 (%struct.page*, i64, i64, %struct.extent_state*, i32)** %144, align 8
  %146 = load %struct.page*, %struct.page** %14, align 8
  %147 = load i64, i64* %9, align 8
  %148 = load i64, i64* %10, align 8
  %149 = load %struct.extent_state*, %struct.extent_state** %16, align 8
  %150 = load i32, i32* %12, align 4
  %151 = call i32 %145(%struct.page* %146, i64 %147, i64 %148, %struct.extent_state* %149, i32 %150)
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %174

154:                                              ; preds = %140
  %155 = load %struct.page*, %struct.page** %14, align 8
  %156 = getelementptr inbounds %struct.page, %struct.page* %155, i32 0, i32 0
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call %struct.TYPE_6__* @BTRFS_I(i32 %159)
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load %struct.btrfs_root*, %struct.btrfs_root** %161, align 8
  store %struct.btrfs_root* %162, %struct.btrfs_root** %17, align 8
  store i32 0, i32* %5, align 4
  %163 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  %164 = load i64, i64* %9, align 8
  %165 = load i32, i32* %12, align 4
  %166 = call %struct.btrfs_device* @btrfs_find_device_for_logical(%struct.btrfs_root* %163, i64 %164, i32 %165)
  store %struct.btrfs_device* %166, %struct.btrfs_device** %18, align 8
  %167 = load %struct.btrfs_device*, %struct.btrfs_device** %18, align 8
  %168 = icmp ne %struct.btrfs_device* %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %154
  %170 = load %struct.btrfs_device*, %struct.btrfs_device** %18, align 8
  %171 = load i32, i32* @BTRFS_DEV_STAT_CORRUPTION_ERRS, align 4
  %172 = call i32 @btrfs_dev_stat_inc_and_print(%struct.btrfs_device* %170, i32 %171)
  br label %173

173:                                              ; preds = %169, %154
  br label %178

174:                                              ; preds = %140
  %175 = load i64, i64* %9, align 8
  %176 = load %struct.page*, %struct.page** %14, align 8
  %177 = call i32 @clean_io_failure(i64 %175, %struct.page* %176)
  br label %178

178:                                              ; preds = %174, %173
  br label %179

179:                                              ; preds = %178, %133, %128, %118
  %180 = load i32, i32* %5, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %216, label %182

182:                                              ; preds = %179
  %183 = load %struct.extent_io_tree*, %struct.extent_io_tree** %8, align 8
  %184 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %183, i32 0, i32 1
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = icmp ne %struct.TYPE_5__* %185, null
  br i1 %186, label %187, label %216

187:                                              ; preds = %182
  %188 = load %struct.extent_io_tree*, %struct.extent_io_tree** %8, align 8
  %189 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %188, i32 0, i32 1
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  %192 = load i32 (%struct.page*, i32)*, i32 (%struct.page*, i32)** %191, align 8
  %193 = icmp ne i32 (%struct.page*, i32)* %192, null
  br i1 %193, label %194, label %216

194:                                              ; preds = %187
  %195 = load %struct.extent_io_tree*, %struct.extent_io_tree** %8, align 8
  %196 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %195, i32 0, i32 1
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  %199 = load i32 (%struct.page*, i32)*, i32 (%struct.page*, i32)** %198, align 8
  %200 = load %struct.page*, %struct.page** %14, align 8
  %201 = load i32, i32* %12, align 4
  %202 = call i32 %199(%struct.page* %200, i32 %201)
  store i32 %202, i32* %13, align 4
  %203 = load i32, i32* %13, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %215, label %205

205:                                              ; preds = %194
  %206 = load i32, i32* %4, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %215, label %208

208:                                              ; preds = %205
  %209 = load i32, i32* @BIO_UPTODATE, align 4
  %210 = load %struct.bio*, %struct.bio** %3, align 8
  %211 = getelementptr inbounds %struct.bio, %struct.bio* %210, i32 0, i32 1
  %212 = call i32 @test_bit(i32 %209, i32* %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %208
  store i32 1, i32* %5, align 4
  br label %215

215:                                              ; preds = %214, %208, %205, %194
  br label %240

216:                                              ; preds = %187, %182, %179
  %217 = load i32, i32* %5, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %239, label %219

219:                                              ; preds = %216
  %220 = load %struct.bio*, %struct.bio** %3, align 8
  %221 = load %struct.page*, %struct.page** %14, align 8
  %222 = load i64, i64* %9, align 8
  %223 = load i64, i64* %10, align 8
  %224 = load i32, i32* %12, align 4
  %225 = call i32 @bio_readpage_error(%struct.bio* %220, %struct.page* %221, i64 %222, i64 %223, i32 %224, i32* null)
  store i32 %225, i32* %13, align 4
  %226 = load i32, i32* %13, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %238

228:                                              ; preds = %219
  %229 = load i32, i32* @BIO_UPTODATE, align 4
  %230 = load %struct.bio*, %struct.bio** %3, align 8
  %231 = getelementptr inbounds %struct.bio, %struct.bio* %230, i32 0, i32 1
  %232 = call i32 @test_bit(i32 %229, i32* %231)
  store i32 %232, i32* %5, align 4
  %233 = load i32, i32* %4, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %228
  store i32 0, i32* %5, align 4
  br label %236

236:                                              ; preds = %235, %228
  %237 = call i32 @uncache_state(%struct.extent_state** %15)
  br label %293

238:                                              ; preds = %219
  br label %239

239:                                              ; preds = %238, %216
  br label %240

240:                                              ; preds = %239, %215
  %241 = load i32, i32* %5, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %254

243:                                              ; preds = %240
  %244 = load %struct.extent_io_tree*, %struct.extent_io_tree** %8, align 8
  %245 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %243
  %249 = load %struct.extent_io_tree*, %struct.extent_io_tree** %8, align 8
  %250 = load i64, i64* %9, align 8
  %251 = load i64, i64* %10, align 8
  %252 = load i32, i32* @GFP_ATOMIC, align 4
  %253 = call i32 @set_extent_uptodate(%struct.extent_io_tree* %249, i64 %250, i64 %251, %struct.extent_state** %15, i32 %252)
  br label %254

254:                                              ; preds = %248, %243, %240
  %255 = load %struct.extent_io_tree*, %struct.extent_io_tree** %8, align 8
  %256 = load i64, i64* %9, align 8
  %257 = load i64, i64* %10, align 8
  %258 = load i32, i32* @GFP_ATOMIC, align 4
  %259 = call i32 @unlock_extent_cached(%struct.extent_io_tree* %255, i64 %256, i64 %257, %struct.extent_state** %15, i32 %258)
  %260 = load i32, i32* %11, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %276

262:                                              ; preds = %254
  %263 = load i32, i32* %5, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %262
  %266 = load %struct.page*, %struct.page** %14, align 8
  %267 = call i32 @SetPageUptodate(%struct.page* %266)
  br label %273

268:                                              ; preds = %262
  %269 = load %struct.page*, %struct.page** %14, align 8
  %270 = call i32 @ClearPageUptodate(%struct.page* %269)
  %271 = load %struct.page*, %struct.page** %14, align 8
  %272 = call i32 @SetPageError(%struct.page* %271)
  br label %273

273:                                              ; preds = %268, %265
  %274 = load %struct.page*, %struct.page** %14, align 8
  %275 = call i32 @unlock_page(%struct.page* %274)
  br label %292

276:                                              ; preds = %254
  %277 = load i32, i32* %5, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %276
  %280 = load %struct.extent_io_tree*, %struct.extent_io_tree** %8, align 8
  %281 = load %struct.page*, %struct.page** %14, align 8
  %282 = call i32 @check_page_uptodate(%struct.extent_io_tree* %280, %struct.page* %281)
  br label %288

283:                                              ; preds = %276
  %284 = load %struct.page*, %struct.page** %14, align 8
  %285 = call i32 @ClearPageUptodate(%struct.page* %284)
  %286 = load %struct.page*, %struct.page** %14, align 8
  %287 = call i32 @SetPageError(%struct.page* %286)
  br label %288

288:                                              ; preds = %283, %279
  %289 = load %struct.extent_io_tree*, %struct.extent_io_tree** %8, align 8
  %290 = load %struct.page*, %struct.page** %14, align 8
  %291 = call i32 @check_page_locked(%struct.extent_io_tree* %289, %struct.page* %290)
  br label %292

292:                                              ; preds = %288, %273
  br label %293

293:                                              ; preds = %292, %236
  %294 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %295 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %296 = icmp ule %struct.bio_vec* %294, %295
  br i1 %296, label %39, label %297

297:                                              ; preds = %293
  %298 = load %struct.bio*, %struct.bio** %3, align 8
  %299 = call i32 @bio_put(%struct.bio* %298)
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i64) #1

declare dso_local %struct.TYPE_6__* @BTRFS_I(i32) #1

declare dso_local i32 @prefetchw(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.extent_state* @find_first_extent_bit_state(%struct.extent_io_tree*, i64, i32) #1

declare dso_local i32 @cache_state(%struct.extent_state*, %struct.extent_state**) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.btrfs_device* @btrfs_find_device_for_logical(%struct.btrfs_root*, i64, i32) #1

declare dso_local i32 @btrfs_dev_stat_inc_and_print(%struct.btrfs_device*, i32) #1

declare dso_local i32 @clean_io_failure(i64, %struct.page*) #1

declare dso_local i32 @bio_readpage_error(%struct.bio*, %struct.page*, i64, i64, i32, i32*) #1

declare dso_local i32 @uncache_state(%struct.extent_state**) #1

declare dso_local i32 @set_extent_uptodate(%struct.extent_io_tree*, i64, i64, %struct.extent_state**, i32) #1

declare dso_local i32 @unlock_extent_cached(%struct.extent_io_tree*, i64, i64, %struct.extent_state**, i32) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @check_page_uptodate(%struct.extent_io_tree*, %struct.page*) #1

declare dso_local i32 @check_page_locked(%struct.extent_io_tree*, %struct.page*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
