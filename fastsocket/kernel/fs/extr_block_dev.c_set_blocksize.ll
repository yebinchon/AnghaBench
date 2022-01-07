; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_block_dev.c_set_blocksize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_block_dev.c_set_blocksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_blocksize(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @PAGE_SIZE, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 512
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @is_power_of_2(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %9, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %48

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.block_device*, %struct.block_device** %4, align 8
  %22 = call i32 @bdev_logical_block_size(%struct.block_device* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %48

27:                                               ; preds = %19
  %28 = load %struct.block_device*, %struct.block_device** %4, align 8
  %29 = getelementptr inbounds %struct.block_device, %struct.block_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  %34 = load %struct.block_device*, %struct.block_device** %4, align 8
  %35 = call i32 @sync_blockdev(%struct.block_device* %34)
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.block_device*, %struct.block_device** %4, align 8
  %38 = getelementptr inbounds %struct.block_device, %struct.block_device* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @blksize_bits(i32 %39)
  %41 = load %struct.block_device*, %struct.block_device** %4, align 8
  %42 = getelementptr inbounds %struct.block_device, %struct.block_device* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  %45 = load %struct.block_device*, %struct.block_device** %4, align 8
  %46 = call i32 @kill_bdev(%struct.block_device* %45)
  br label %47

47:                                               ; preds = %33, %27
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %24, %16
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #1

declare dso_local i32 @sync_blockdev(%struct.block_device*) #1

declare dso_local i32 @blksize_bits(i32) #1

declare dso_local i32 @kill_bdev(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
