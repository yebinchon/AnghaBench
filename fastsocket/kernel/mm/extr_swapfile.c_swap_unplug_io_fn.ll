; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_swap_unplug_io_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_swap_unplug_io_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.block_device* }
%struct.block_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.backing_dev_info* }
%struct.backing_dev_info = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_8__ = type { i32 }

@swap_unplug_sem = common dso_local global i32 0, align 4
@swap_info = common dso_local global %struct.TYPE_9__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap_unplug_io_fn(%struct.backing_dev_info* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.backing_dev_info*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca %struct.backing_dev_info*, align 8
  store %struct.backing_dev_info* %0, %struct.backing_dev_info** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %8 = call i32 @down_read(i32* @swap_unplug_sem)
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call i32 @page_private(%struct.page* %9)
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = call i64 @PageSwapCache(%struct.page* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %2
  %16 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @swap_info, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @swp_type(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %16, i64 %19
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.block_device*, %struct.block_device** %22, align 8
  store %struct.block_device* %23, %struct.block_device** %6, align 8
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = call i32 @page_count(%struct.page* %24)
  %26 = icmp sle i32 %25, 1
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.block_device*, %struct.block_device** %6, align 8
  %30 = getelementptr inbounds %struct.block_device, %struct.block_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.backing_dev_info*, %struct.backing_dev_info** %34, align 8
  store %struct.backing_dev_info* %35, %struct.backing_dev_info** %7, align 8
  %36 = load %struct.backing_dev_info*, %struct.backing_dev_info** %7, align 8
  %37 = load %struct.page*, %struct.page** %4, align 8
  %38 = call i32 @blk_run_backing_dev(%struct.backing_dev_info* %36, %struct.page* %37)
  br label %39

39:                                               ; preds = %15, %2
  %40 = call i32 @up_read(i32* @swap_unplug_sem)
  ret void
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i64 @swp_type(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local i32 @blk_run_backing_dev(%struct.backing_dev_info*, %struct.page*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
