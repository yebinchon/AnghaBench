; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_block_dev.c___sync_blockdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_block_dev.c___sync_blockdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sync_blockdev(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.block_device*, %struct.block_device** %4, align 8
  %7 = icmp ne %struct.block_device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = load %struct.block_device*, %struct.block_device** %4, align 8
  %14 = getelementptr inbounds %struct.block_device, %struct.block_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @filemap_flush(i32 %17)
  store i32 %18, i32* %3, align 4
  br label %26

19:                                               ; preds = %9
  %20 = load %struct.block_device*, %struct.block_device** %4, align 8
  %21 = getelementptr inbounds %struct.block_device, %struct.block_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @filemap_write_and_wait(i32 %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %19, %12, %8
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @filemap_flush(i32) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
