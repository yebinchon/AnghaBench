; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_direct_IO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iovec = type { i32 }
%struct.btrfs_ordered_extent = type { i32 }
%struct.extent_state = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@WRITE = common dso_local global i32 0, align 4
@EXTENT_UPTODATE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@EXTENT_DELALLOC = common dso_local global i32 0, align 4
@EXTENT_DO_ACCOUNTING = common dso_local global i32 0, align 4
@EXTENT_LOCKED = common dso_local global i32 0, align 4
@btrfs_get_blocks_direct = common dso_local global i32 0, align 4
@btrfs_submit_direct = common dso_local global i32 0, align 4
@EIOCBQUEUED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.kiocb*, %struct.iovec*, i64, i64)* @btrfs_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btrfs_direct_IO(i32 %0, %struct.kiocb* %1, %struct.iovec* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kiocb*, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.btrfs_ordered_extent*, align 8
  %15 = alloca %struct.extent_state*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.kiocb* %1, %struct.kiocb** %8, align 8
  store %struct.iovec* %2, %struct.iovec** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %23 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %22, i32 0, i32 0
  %24 = load %struct.file*, %struct.file** %23, align 8
  store %struct.file* %24, %struct.file** %12, align 8
  %25 = load %struct.file*, %struct.file** %12, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.inode*, %struct.inode** %28, align 8
  store %struct.inode* %29, %struct.inode** %13, align 8
  store %struct.extent_state* null, %struct.extent_state** %15, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @WRITE, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %33 = load %struct.iovec*, %struct.iovec** %9, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i64 @iov_length(%struct.iovec* %33, i64 %34)
  store i64 %35, i64* %21, align 8
  %36 = load %struct.inode*, %struct.inode** %13, align 8
  %37 = call %struct.TYPE_11__* @BTRFS_I(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %42 = load %struct.iovec*, %struct.iovec** %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i64 @check_direct_IO(%struct.TYPE_10__* %39, i32 %40, %struct.kiocb* %41, %struct.iovec* %42, i64 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %251

48:                                               ; preds = %5
  %49 = load i64, i64* %10, align 8
  store i64 %49, i64* %16, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %21, align 8
  %52 = add i64 %50, %51
  %53 = sub i64 %52, 1
  store i64 %53, i64* %17, align 8
  %54 = load i32, i32* %19, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load %struct.inode*, %struct.inode** %13, align 8
  %58 = load i64, i64* %21, align 8
  %59 = call i64 @btrfs_delalloc_reserve_space(%struct.inode* %57, i64 %58)
  store i64 %59, i64* %18, align 8
  %60 = load i64, i64* %18, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %247

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %48
  br label %65

65:                                               ; preds = %64, %142
  %66 = load %struct.inode*, %struct.inode** %13, align 8
  %67 = call %struct.TYPE_11__* @BTRFS_I(%struct.inode* %66)
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %16, align 8
  %70 = load i64, i64* %17, align 8
  %71 = call i32 @lock_extent_bits(i32* %68, i64 %69, i64 %70, i32 0, %struct.extent_state** %15)
  %72 = load %struct.inode*, %struct.inode** %13, align 8
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* %17, align 8
  %75 = load i64, i64* %16, align 8
  %76 = sub i64 %74, %75
  %77 = add i64 %76, 1
  %78 = call %struct.btrfs_ordered_extent* @btrfs_lookup_ordered_range(%struct.inode* %72, i64 %73, i64 %77)
  store %struct.btrfs_ordered_extent* %78, %struct.btrfs_ordered_extent** %14, align 8
  %79 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %14, align 8
  %80 = icmp ne %struct.btrfs_ordered_extent* %79, null
  br i1 %80, label %95, label %81

81:                                               ; preds = %65
  %82 = load i32, i32* %19, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load %struct.inode*, %struct.inode** %13, align 8
  %86 = call %struct.TYPE_11__* @BTRFS_I(%struct.inode* %85)
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64, i64* %16, align 8
  %89 = load i64, i64* %17, align 8
  %90 = load i32, i32* @EXTENT_UPTODATE, align 4
  %91 = load %struct.extent_state*, %struct.extent_state** %15, align 8
  %92 = call i32 @test_range_bit(i32* %87, i64 %88, i64 %89, i32 %90, i32 0, %struct.extent_state* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %84, %81
  br label %144

95:                                               ; preds = %84, %65
  %96 = load %struct.inode*, %struct.inode** %13, align 8
  %97 = call %struct.TYPE_11__* @BTRFS_I(%struct.inode* %96)
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i64, i64* %16, align 8
  %100 = load i64, i64* %17, align 8
  %101 = load i32, i32* @GFP_NOFS, align 4
  %102 = call i32 @unlock_extent_cached(i32* %98, i64 %99, i64 %100, %struct.extent_state** %15, i32 %101)
  %103 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %14, align 8
  %104 = icmp ne %struct.btrfs_ordered_extent* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %95
  %106 = load %struct.inode*, %struct.inode** %13, align 8
  %107 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %14, align 8
  %108 = call i32 @btrfs_start_ordered_extent(%struct.inode* %106, %struct.btrfs_ordered_extent* %107, i32 1)
  %109 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %14, align 8
  %110 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %109)
  br label %142

111:                                              ; preds = %95
  %112 = load %struct.file*, %struct.file** %12, align 8
  %113 = getelementptr inbounds %struct.file, %struct.file* %112, i32 0, i32 0
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = load i64, i64* %16, align 8
  %116 = load i64, i64* %17, align 8
  %117 = call i64 @filemap_write_and_wait_range(%struct.TYPE_9__* %114, i64 %115, i64 %116)
  store i64 %117, i64* %18, align 8
  %118 = load i64, i64* %18, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  br label %247

121:                                              ; preds = %111
  %122 = load %struct.file*, %struct.file** %12, align 8
  %123 = getelementptr inbounds %struct.file, %struct.file* %122, i32 0, i32 0
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = load i64, i64* %16, align 8
  %126 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %127 = lshr i64 %125, %126
  %128 = load i64, i64* %17, align 8
  %129 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %130 = lshr i64 %128, %129
  %131 = call i64 @invalidate_inode_pages2_range(%struct.TYPE_9__* %124, i64 %127, i64 %130)
  store i64 %131, i64* %18, align 8
  %132 = load i64, i64* %18, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %121
  %135 = load i64, i64* %18, align 8
  %136 = load i64, i64* @EBUSY, align 8
  %137 = sub i64 0, %136
  %138 = icmp eq i64 %135, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i64 0, i64* %18, align 8
  br label %140

140:                                              ; preds = %139, %134
  br label %247

141:                                              ; preds = %121
  br label %142

142:                                              ; preds = %141, %105
  %143 = call i32 (...) @cond_resched()
  br label %65

144:                                              ; preds = %94
  %145 = load i32, i32* %19, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %173

147:                                              ; preds = %144
  %148 = load i32, i32* @EXTENT_DELALLOC, align 4
  %149 = load i32, i32* @EXTENT_DO_ACCOUNTING, align 4
  %150 = or i32 %148, %149
  store i32 %150, i32* %20, align 4
  %151 = load %struct.inode*, %struct.inode** %13, align 8
  %152 = call %struct.TYPE_11__* @BTRFS_I(%struct.inode* %151)
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i64, i64* %16, align 8
  %155 = load i64, i64* %17, align 8
  %156 = load i32, i32* @EXTENT_DELALLOC, align 4
  %157 = load i32, i32* @GFP_NOFS, align 4
  %158 = call i64 @set_extent_bit(i32* %153, i64 %154, i64 %155, i32 %156, i32* null, %struct.extent_state** %15, i32 %157)
  store i64 %158, i64* %18, align 8
  %159 = load i64, i64* %18, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %147
  %162 = load %struct.inode*, %struct.inode** %13, align 8
  %163 = call %struct.TYPE_11__* @BTRFS_I(%struct.inode* %162)
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load i64, i64* %16, align 8
  %166 = load i64, i64* %17, align 8
  %167 = load i32, i32* @EXTENT_LOCKED, align 4
  %168 = load i32, i32* %20, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @GFP_NOFS, align 4
  %171 = call i32 @clear_extent_bit(i32* %164, i64 %165, i64 %166, i32 %169, i32 1, i32 0, %struct.extent_state** %15, i32 %170)
  br label %247

172:                                              ; preds = %147
  br label %173

173:                                              ; preds = %172, %144
  %174 = load %struct.extent_state*, %struct.extent_state** %15, align 8
  %175 = call i32 @free_extent_state(%struct.extent_state* %174)
  store %struct.extent_state* null, %struct.extent_state** %15, align 8
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %178 = load %struct.inode*, %struct.inode** %13, align 8
  %179 = load %struct.inode*, %struct.inode** %13, align 8
  %180 = call %struct.TYPE_11__* @BTRFS_I(%struct.inode* %179)
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.iovec*, %struct.iovec** %9, align 8
  %190 = load i64, i64* %10, align 8
  %191 = load i64, i64* %11, align 8
  %192 = load i32, i32* @btrfs_get_blocks_direct, align 4
  %193 = load i32, i32* @btrfs_submit_direct, align 4
  %194 = call i64 @__blockdev_direct_IO(i32 %176, %struct.kiocb* %177, %struct.inode* %178, i32 %188, %struct.iovec* %189, i64 %190, i64 %191, i32 %192, i32* null, i32 %193, i32 0)
  store i64 %194, i64* %18, align 8
  %195 = load i64, i64* %18, align 8
  %196 = icmp ult i64 %195, 0
  br i1 %196, label %197, label %218

197:                                              ; preds = %173
  %198 = load i64, i64* %18, align 8
  %199 = load i64, i64* @EIOCBQUEUED, align 8
  %200 = sub i64 0, %199
  %201 = icmp ne i64 %198, %200
  br i1 %201, label %202, label %218

202:                                              ; preds = %197
  %203 = load %struct.inode*, %struct.inode** %13, align 8
  %204 = call %struct.TYPE_11__* @BTRFS_I(%struct.inode* %203)
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load i64, i64* %10, align 8
  %207 = load i64, i64* %10, align 8
  %208 = load %struct.iovec*, %struct.iovec** %9, align 8
  %209 = load i64, i64* %11, align 8
  %210 = call i64 @iov_length(%struct.iovec* %208, i64 %209)
  %211 = add i64 %207, %210
  %212 = sub i64 %211, 1
  %213 = load i32, i32* @EXTENT_LOCKED, align 4
  %214 = load i32, i32* %20, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* @GFP_NOFS, align 4
  %217 = call i32 @clear_extent_bit(i32* %205, i64 %206, i64 %212, i32 %215, i32 1, i32 0, %struct.extent_state** %15, i32 %216)
  br label %246

218:                                              ; preds = %197, %173
  %219 = load i64, i64* %18, align 8
  %220 = icmp uge i64 %219, 0
  br i1 %220, label %221, label %245

221:                                              ; preds = %218
  %222 = load i64, i64* %18, align 8
  %223 = load %struct.iovec*, %struct.iovec** %9, align 8
  %224 = load i64, i64* %11, align 8
  %225 = call i64 @iov_length(%struct.iovec* %223, i64 %224)
  %226 = icmp ult i64 %222, %225
  br i1 %226, label %227, label %245

227:                                              ; preds = %221
  %228 = load %struct.inode*, %struct.inode** %13, align 8
  %229 = call %struct.TYPE_11__* @BTRFS_I(%struct.inode* %228)
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  %231 = load i64, i64* %10, align 8
  %232 = load i64, i64* %18, align 8
  %233 = add i64 %231, %232
  %234 = load i64, i64* %10, align 8
  %235 = load %struct.iovec*, %struct.iovec** %9, align 8
  %236 = load i64, i64* %11, align 8
  %237 = call i64 @iov_length(%struct.iovec* %235, i64 %236)
  %238 = add i64 %234, %237
  %239 = sub i64 %238, 1
  %240 = load i32, i32* @EXTENT_LOCKED, align 4
  %241 = load i32, i32* %20, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* @GFP_NOFS, align 4
  %244 = call i32 @clear_extent_bit(i32* %230, i64 %233, i64 %239, i32 %242, i32 1, i32 0, %struct.extent_state** %15, i32 %243)
  br label %245

245:                                              ; preds = %227, %221, %218
  br label %246

246:                                              ; preds = %245, %202
  br label %247

247:                                              ; preds = %246, %161, %140, %120, %62
  %248 = load %struct.extent_state*, %struct.extent_state** %15, align 8
  %249 = call i32 @free_extent_state(%struct.extent_state* %248)
  %250 = load i64, i64* %18, align 8
  store i64 %250, i64* %6, align 8
  br label %251

251:                                              ; preds = %247, %47
  %252 = load i64, i64* %6, align 8
  ret i64 %252
}

declare dso_local i64 @iov_length(%struct.iovec*, i64) #1

declare dso_local i64 @check_direct_IO(%struct.TYPE_10__*, i32, %struct.kiocb*, %struct.iovec*, i64, i64) #1

declare dso_local %struct.TYPE_11__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @btrfs_delalloc_reserve_space(%struct.inode*, i64) #1

declare dso_local i32 @lock_extent_bits(i32*, i64, i64, i32, %struct.extent_state**) #1

declare dso_local %struct.btrfs_ordered_extent* @btrfs_lookup_ordered_range(%struct.inode*, i64, i64) #1

declare dso_local i32 @test_range_bit(i32*, i64, i64, i32, i32, %struct.extent_state*) #1

declare dso_local i32 @unlock_extent_cached(i32*, i64, i64, %struct.extent_state**, i32) #1

declare dso_local i32 @btrfs_start_ordered_extent(%struct.inode*, %struct.btrfs_ordered_extent*, i32) #1

declare dso_local i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent*) #1

declare dso_local i64 @filemap_write_and_wait_range(%struct.TYPE_9__*, i64, i64) #1

declare dso_local i64 @invalidate_inode_pages2_range(%struct.TYPE_9__*, i64, i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @set_extent_bit(i32*, i64, i64, i32, i32*, %struct.extent_state**, i32) #1

declare dso_local i32 @clear_extent_bit(i32*, i64, i64, i32, i32, i32, %struct.extent_state**, i32) #1

declare dso_local i32 @free_extent_state(%struct.extent_state*) #1

declare dso_local i64 @__blockdev_direct_IO(i32, %struct.kiocb*, %struct.inode*, i32, %struct.iovec*, i64, i64, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
