; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_btree_io_failed_hook.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_btree_io_failed_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.extent_buffer = type { i32, i32, i32 }
%struct.btrfs_root = type { i32 }
%struct.TYPE_4__ = type { %struct.btrfs_root* }

@EXTENT_BUFFER_IOERR = common dso_local global i32 0, align 4
@EXTENT_BUFFER_READAHEAD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32)* @btree_io_failed_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btree_io_failed_hook(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.extent_buffer*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = getelementptr inbounds %struct.page, %struct.page* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_4__* @BTRFS_I(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  store %struct.btrfs_root* %14, %struct.btrfs_root** %6, align 8
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.extent_buffer*
  store %struct.extent_buffer* %18, %struct.extent_buffer** %5, align 8
  %19 = load i32, i32* @EXTENT_BUFFER_IOERR, align 4
  %20 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %20, i32 0, i32 2
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %25 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @EXTENT_BUFFER_READAHEAD, align 4
  %27 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %28 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %27, i32 0, i32 2
  %29 = call i64 @test_and_clear_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %2
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %33 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %34 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %35 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  %39 = call i32 @btree_readahead_hook(%struct.btrfs_root* %32, %struct.extent_buffer* %33, i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %31, %2
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  ret i32 %42
}

declare dso_local %struct.TYPE_4__* @BTRFS_I(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @btree_readahead_hook(%struct.btrfs_root*, %struct.extent_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
