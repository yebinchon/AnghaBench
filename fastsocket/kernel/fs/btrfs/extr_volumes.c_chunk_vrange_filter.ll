; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_chunk_vrange_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_chunk_vrange_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }
%struct.btrfs_chunk = type { i32 }
%struct.btrfs_balance_args = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extent_buffer*, %struct.btrfs_chunk*, i64, %struct.btrfs_balance_args*)* @chunk_vrange_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chunk_vrange_filter(%struct.extent_buffer* %0, %struct.btrfs_chunk* %1, i64 %2, %struct.btrfs_balance_args* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.extent_buffer*, align 8
  %7 = alloca %struct.btrfs_chunk*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.btrfs_balance_args*, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %6, align 8
  store %struct.btrfs_chunk* %1, %struct.btrfs_chunk** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.btrfs_balance_args* %3, %struct.btrfs_balance_args** %9, align 8
  %10 = load i64, i64* %8, align 8
  %11 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %9, align 8
  %12 = getelementptr inbounds %struct.btrfs_balance_args, %struct.btrfs_balance_args* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %4
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %18 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %7, align 8
  %19 = call i64 @btrfs_chunk_length(%struct.extent_buffer* %17, %struct.btrfs_chunk* %18)
  %20 = add nsw i64 %16, %19
  %21 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %9, align 8
  %22 = getelementptr inbounds %struct.btrfs_balance_args, %struct.btrfs_balance_args* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %27

26:                                               ; preds = %15, %4
  store i32 1, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i64 @btrfs_chunk_length(%struct.extent_buffer*, %struct.btrfs_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
