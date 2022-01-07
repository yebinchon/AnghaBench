; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ordered-data.c_offset_in_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ordered-data.c_offset_in_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_ordered_extent = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_ordered_extent*, i64)* @offset_in_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @offset_in_entry(%struct.btrfs_ordered_extent* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_ordered_extent*, align 8
  %5 = alloca i64, align 8
  store %struct.btrfs_ordered_extent* %0, %struct.btrfs_ordered_extent** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %4, align 8
  %8 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %6, %9
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %4, align 8
  %13 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %4, align 8
  %16 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = load i64, i64* %5, align 8
  %20 = icmp sle i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %23

22:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
