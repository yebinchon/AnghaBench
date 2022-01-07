; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_block_dev.c___invalidate_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_block_dev.c___invalidate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.super_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__invalidate_device(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.block_device*, %struct.block_device** %3, align 8
  %8 = call %struct.super_block* @get_super(%struct.block_device* %7)
  store %struct.super_block* %8, %struct.super_block** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.super_block*, %struct.super_block** %5, align 8
  %10 = icmp ne %struct.super_block* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call i32 @shrink_dcache_sb(%struct.super_block* %12)
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @invalidate_inodes(%struct.super_block* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.super_block*, %struct.super_block** %5, align 8
  %18 = call i32 @drop_super(%struct.super_block* %17)
  br label %19

19:                                               ; preds = %11, %2
  %20 = load %struct.block_device*, %struct.block_device** %3, align 8
  %21 = call i32 @invalidate_bdev(%struct.block_device* %20)
  %22 = load i32, i32* %6, align 4
  ret i32 %22
}

declare dso_local %struct.super_block* @get_super(%struct.block_device*) #1

declare dso_local i32 @shrink_dcache_sb(%struct.super_block*) #1

declare dso_local i32 @invalidate_inodes(%struct.super_block*, i32) #1

declare dso_local i32 @drop_super(%struct.super_block*) #1

declare dso_local i32 @invalidate_bdev(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
