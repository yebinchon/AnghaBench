; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_writepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.page = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.writeback_control = type { i32 }
%struct.extent_io_tree = type { i32 }
%struct.TYPE_6__ = type { %struct.extent_io_tree }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@PF_MEMALLOC = common dso_local global i32 0, align 4
@btrfs_get_extent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @btrfs_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_writepage(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.extent_io_tree*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PF_MEMALLOC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %14, %struct.page* %15)
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = call i32 @unlock_page(%struct.page* %17)
  store i32 0, i32* %3, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load %struct.page*, %struct.page** %4, align 8
  %21 = getelementptr inbounds %struct.page, %struct.page* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_6__* @BTRFS_I(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store %struct.extent_io_tree* %26, %struct.extent_io_tree** %6, align 8
  %27 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = load i32, i32* @btrfs_get_extent, align 4
  %30 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %31 = call i32 @extent_write_full_page(%struct.extent_io_tree* %27, %struct.page* %28, i32 %29, %struct.writeback_control* %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %19, %13
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local %struct.TYPE_6__* @BTRFS_I(i32) #1

declare dso_local i32 @extent_write_full_page(%struct.extent_io_tree*, %struct.page*, i32, %struct.writeback_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
