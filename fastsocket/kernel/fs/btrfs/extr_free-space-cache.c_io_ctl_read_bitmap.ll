; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_io_ctl_read_bitmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_io_ctl_read_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ctl = type { i32, i32 }
%struct.btrfs_free_space = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_ctl*, %struct.btrfs_free_space*)* @io_ctl_read_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_ctl_read_bitmap(%struct.io_ctl* %0, %struct.btrfs_free_space* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.io_ctl*, align 8
  %5 = alloca %struct.btrfs_free_space*, align 8
  %6 = alloca i32, align 4
  store %struct.io_ctl* %0, %struct.io_ctl** %4, align 8
  store %struct.btrfs_free_space* %1, %struct.btrfs_free_space** %5, align 8
  %7 = load %struct.io_ctl*, %struct.io_ctl** %4, align 8
  %8 = load %struct.io_ctl*, %struct.io_ctl** %4, align 8
  %9 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @io_ctl_check_crc(%struct.io_ctl* %7, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %27

16:                                               ; preds = %2
  %17 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %5, align 8
  %18 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.io_ctl*, %struct.io_ctl** %4, align 8
  %21 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %24 = call i32 @memcpy(i32 %19, i32 %22, i32 %23)
  %25 = load %struct.io_ctl*, %struct.io_ctl** %4, align 8
  %26 = call i32 @io_ctl_unmap_page(%struct.io_ctl* %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %16, %14
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @io_ctl_check_crc(%struct.io_ctl*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @io_ctl_unmap_page(%struct.io_ctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
