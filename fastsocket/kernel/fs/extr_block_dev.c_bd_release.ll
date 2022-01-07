; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_block_dev.c_bd_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_block_dev.c_bd_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }

@bdev_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bd_release(%struct.block_device* %0) #0 {
  %2 = alloca %struct.block_device*, align 8
  store %struct.block_device* %0, %struct.block_device** %2, align 8
  %3 = call i32 @spin_lock(i32* @bdev_lock)
  %4 = load %struct.block_device*, %struct.block_device** %2, align 8
  %5 = getelementptr inbounds %struct.block_device, %struct.block_device* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %7, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.block_device*, %struct.block_device** %2, align 8
  %13 = getelementptr inbounds %struct.block_device, %struct.block_device* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.block_device*, %struct.block_device** %2, align 8
  %18 = getelementptr inbounds %struct.block_device, %struct.block_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load %struct.block_device*, %struct.block_device** %2, align 8
  %24 = getelementptr inbounds %struct.block_device, %struct.block_device* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %22, %16
  %26 = call i32 @spin_unlock(i32* @bdev_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
