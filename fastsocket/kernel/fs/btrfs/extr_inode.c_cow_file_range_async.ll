; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_cow_file_range_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_cow_file_range_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.async_cow = type { %struct.TYPE_5__, i32, i64, i64, %struct.page*, %struct.btrfs_root*, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.btrfs_root = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.btrfs_root* }

@EXTENT_LOCKED = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@BTRFS_INODE_NOCOMPRESS = common dso_local global i32 0, align 4
@async_cow_start = common dso_local global i32 0, align 4
@async_cow_submit = common dso_local global i32 0, align 4
@async_cow_free = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.page*, i64, i64, i32*, i64*)* @cow_file_range_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cow_file_range_async(%struct.inode* %0, %struct.page* %1, i64 %2, i64 %3, i32* %4, i64* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.async_cow*, align 8
  %14 = alloca %struct.btrfs_root*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i64* %5, i64** %12, align 8
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %20, align 8
  store %struct.btrfs_root* %21, %struct.btrfs_root** %14, align 8
  store i32 10670080, i32* %17, align 4
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i32, i32* @EXTENT_LOCKED, align 4
  %28 = load i32, i32* @GFP_NOFS, align 4
  %29 = call i32 @clear_extent_bit(i32* %24, i64 %25, i64 %26, i32 %27, i32 1, i32 0, i32* null, i32 %28)
  br label %30

30:                                               ; preds = %165, %6
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %172

34:                                               ; preds = %30
  %35 = load i32, i32* @GFP_NOFS, align 4
  %36 = call %struct.async_cow* @kmalloc(i32 72, i32 %35)
  store %struct.async_cow* %36, %struct.async_cow** %13, align 8
  %37 = load %struct.async_cow*, %struct.async_cow** %13, align 8
  %38 = icmp ne %struct.async_cow* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = call i32 @igrab(%struct.inode* %42)
  %44 = load %struct.async_cow*, %struct.async_cow** %13, align 8
  %45 = getelementptr inbounds %struct.async_cow, %struct.async_cow* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %47 = load %struct.async_cow*, %struct.async_cow** %13, align 8
  %48 = getelementptr inbounds %struct.async_cow, %struct.async_cow* %47, i32 0, i32 5
  store %struct.btrfs_root* %46, %struct.btrfs_root** %48, align 8
  %49 = load %struct.page*, %struct.page** %8, align 8
  %50 = load %struct.async_cow*, %struct.async_cow** %13, align 8
  %51 = getelementptr inbounds %struct.async_cow, %struct.async_cow* %50, i32 0, i32 4
  store %struct.page* %49, %struct.page** %51, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.async_cow*, %struct.async_cow** %13, align 8
  %54 = getelementptr inbounds %struct.async_cow, %struct.async_cow* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %55)
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @BTRFS_INODE_NOCOMPRESS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %34
  %63 = load i64, i64* %10, align 8
  store i64 %63, i64* %16, align 8
  br label %70

64:                                               ; preds = %34
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %9, align 8
  %67 = add nsw i64 %66, 524288
  %68 = sub nsw i64 %67, 1
  %69 = call i64 @min(i64 %65, i64 %68)
  store i64 %69, i64* %16, align 8
  br label %70

70:                                               ; preds = %64, %62
  %71 = load i64, i64* %16, align 8
  %72 = load %struct.async_cow*, %struct.async_cow** %13, align 8
  %73 = getelementptr inbounds %struct.async_cow, %struct.async_cow* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = load %struct.async_cow*, %struct.async_cow** %13, align 8
  %75 = getelementptr inbounds %struct.async_cow, %struct.async_cow* %74, i32 0, i32 1
  %76 = call i32 @INIT_LIST_HEAD(i32* %75)
  %77 = load i32, i32* @async_cow_start, align 4
  %78 = load %struct.async_cow*, %struct.async_cow** %13, align 8
  %79 = getelementptr inbounds %struct.async_cow, %struct.async_cow* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 8
  %81 = load i32, i32* @async_cow_submit, align 4
  %82 = load %struct.async_cow*, %struct.async_cow** %13, align 8
  %83 = getelementptr inbounds %struct.async_cow, %struct.async_cow* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* @async_cow_free, align 4
  %86 = load %struct.async_cow*, %struct.async_cow** %13, align 8
  %87 = getelementptr inbounds %struct.async_cow, %struct.async_cow* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 8
  %89 = load %struct.async_cow*, %struct.async_cow** %13, align 8
  %90 = getelementptr inbounds %struct.async_cow, %struct.async_cow* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* %9, align 8
  %94 = sub nsw i64 %92, %93
  %95 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %96 = add nsw i64 %94, %95
  %97 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %98 = ashr i64 %96, %97
  store i64 %98, i64* %15, align 8
  %99 = load i64, i64* %15, align 8
  %100 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %101 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = call i32 @atomic_add(i64 %99, i32* %103)
  %105 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %106 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  %109 = load %struct.async_cow*, %struct.async_cow** %13, align 8
  %110 = getelementptr inbounds %struct.async_cow, %struct.async_cow* %109, i32 0, i32 0
  %111 = call i32 @btrfs_queue_worker(i32* %108, %struct.TYPE_5__* %110)
  %112 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %113 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = call i32 @atomic_read(i32* %115)
  %117 = load i32, i32* %17, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %134

119:                                              ; preds = %70
  %120 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %121 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %126 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = call i32 @atomic_read(i32* %128)
  %130 = load i32, i32* %17, align 4
  %131 = icmp slt i32 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @wait_event(i32 %124, i32 %132)
  br label %134

134:                                              ; preds = %119, %70
  br label %135

135:                                              ; preds = %151, %134
  %136 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %137 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %136, i32 0, i32 0
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = call i32 @atomic_read(i32* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %135
  %143 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %144 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = call i32 @atomic_read(i32* %146)
  %148 = icmp ne i32 %147, 0
  br label %149

149:                                              ; preds = %142, %135
  %150 = phi i1 [ false, %135 ], [ %148, %142 ]
  br i1 %150, label %151, label %165

151:                                              ; preds = %149
  %152 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %153 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %152, i32 0, i32 0
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %158 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %157, i32 0, i32 0
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = call i32 @atomic_read(i32* %160)
  %162 = icmp eq i32 %161, 0
  %163 = zext i1 %162 to i32
  %164 = call i32 @wait_event(i32 %156, i32 %163)
  br label %135

165:                                              ; preds = %149
  %166 = load i64, i64* %15, align 8
  %167 = load i64*, i64** %12, align 8
  %168 = load i64, i64* %167, align 8
  %169 = add i64 %168, %166
  store i64 %169, i64* %167, align 8
  %170 = load i64, i64* %16, align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* %9, align 8
  br label %30

172:                                              ; preds = %30
  %173 = load i32*, i32** %11, align 8
  store i32 1, i32* %173, align 4
  ret i32 0
}

declare dso_local %struct.TYPE_6__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @clear_extent_bit(i32*, i64, i64, i32, i32, i32, i32*, i32) #1

declare dso_local %struct.async_cow* @kmalloc(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_add(i64, i32*) #1

declare dso_local i32 @btrfs_queue_worker(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
