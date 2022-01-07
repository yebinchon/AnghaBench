; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_chunk_devid_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_chunk_devid_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }
%struct.btrfs_chunk = type { i32 }
%struct.btrfs_balance_args = type { i64 }
%struct.btrfs_stripe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extent_buffer*, %struct.btrfs_chunk*, %struct.btrfs_balance_args*)* @chunk_devid_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chunk_devid_filter(%struct.extent_buffer* %0, %struct.btrfs_chunk* %1, %struct.btrfs_balance_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.extent_buffer*, align 8
  %6 = alloca %struct.btrfs_chunk*, align 8
  %7 = alloca %struct.btrfs_balance_args*, align 8
  %8 = alloca %struct.btrfs_stripe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.extent_buffer* %0, %struct.extent_buffer** %5, align 8
  store %struct.btrfs_chunk* %1, %struct.btrfs_chunk** %6, align 8
  store %struct.btrfs_balance_args* %2, %struct.btrfs_balance_args** %7, align 8
  %11 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %12 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %6, align 8
  %13 = call i32 @btrfs_chunk_num_stripes(%struct.extent_buffer* %11, %struct.btrfs_chunk* %12)
  store i32 %13, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %31, %3
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %6, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.btrfs_stripe* @btrfs_stripe_nr(%struct.btrfs_chunk* %19, i32 %20)
  store %struct.btrfs_stripe* %21, %struct.btrfs_stripe** %8, align 8
  %22 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %23 = load %struct.btrfs_stripe*, %struct.btrfs_stripe** %8, align 8
  %24 = call i64 @btrfs_stripe_devid(%struct.extent_buffer* %22, %struct.btrfs_stripe* %23)
  %25 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %7, align 8
  %26 = getelementptr inbounds %struct.btrfs_balance_args, %struct.btrfs_balance_args* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %35

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %14

34:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @btrfs_chunk_num_stripes(%struct.extent_buffer*, %struct.btrfs_chunk*) #1

declare dso_local %struct.btrfs_stripe* @btrfs_stripe_nr(%struct.btrfs_chunk*, i32) #1

declare dso_local i64 @btrfs_stripe_devid(%struct.extent_buffer*, %struct.btrfs_stripe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
