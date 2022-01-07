; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_alloc_buftarg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_alloc_buftarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__, i32, i32, i32, %struct.block_device*, i32, %struct.xfs_mount* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.xfs_mount = type { i32 }
%struct.block_device = type { i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@xfs_buftarg_shrink = common dso_local global i32 0, align 4
@DEFAULT_SEEKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @xfs_alloc_buftarg(%struct.xfs_mount* %0, %struct.block_device* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store %struct.block_device* %1, %struct.block_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* @KM_SLEEP, align 4
  %12 = call %struct.TYPE_8__* @kmem_zalloc(i32 48, i32 %11)
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %10, align 8
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 6
  store %struct.xfs_mount* %13, %struct.xfs_mount** %15, align 8
  %16 = load %struct.block_device*, %struct.block_device** %7, align 8
  %17 = getelementptr inbounds %struct.block_device, %struct.block_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load %struct.block_device*, %struct.block_device** %7, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 4
  store %struct.block_device* %21, %struct.block_device** %23, align 8
  %24 = load %struct.block_device*, %struct.block_device** %7, align 8
  %25 = call i32 @blk_get_backing_dev_info(%struct.block_device* %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %4
  br label %64

33:                                               ; preds = %4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %41 = load %struct.block_device*, %struct.block_device** %7, align 8
  %42 = call i64 @xfs_setsize_buftarg_early(%struct.TYPE_8__* %40, %struct.block_device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %64

45:                                               ; preds = %33
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i64 @xfs_alloc_delwrite_queue(%struct.TYPE_8__* %46, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %64

51:                                               ; preds = %45
  %52 = load i32, i32* @xfs_buftarg_shrink, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @DEFAULT_SEEKS, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = call i32 @register_shrinker(%struct.TYPE_9__* %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %5, align 8
  br label %67

64:                                               ; preds = %50, %44, %32
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %66 = call i32 @kmem_free(%struct.TYPE_8__* %65)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %67

67:                                               ; preds = %64, %51
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %68
}

declare dso_local %struct.TYPE_8__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @blk_get_backing_dev_info(%struct.block_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @xfs_setsize_buftarg_early(%struct.TYPE_8__*, %struct.block_device*) #1

declare dso_local i64 @xfs_alloc_delwrite_queue(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @register_shrinker(%struct.TYPE_9__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
