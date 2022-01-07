; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_dma.c_dma_unlink_head.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_dma.c_dma_unlink_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { %struct.dma_desc*, %struct.dma_desc* }
%struct.dma_queue = type { %struct.dma_desc* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_desc* @dma_unlink_head(%struct.dma_queue* %0) #0 {
  %2 = alloca %struct.dma_desc*, align 8
  %3 = alloca %struct.dma_queue*, align 8
  %4 = alloca %struct.dma_desc*, align 8
  store %struct.dma_queue* %0, %struct.dma_queue** %3, align 8
  %5 = load %struct.dma_queue*, %struct.dma_queue** %3, align 8
  %6 = call i64 @queue_empty(%struct.dma_queue* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.dma_desc* null, %struct.dma_desc** %2, align 8
  br label %35

9:                                                ; preds = %1
  %10 = load %struct.dma_queue*, %struct.dma_queue** %3, align 8
  %11 = getelementptr inbounds %struct.dma_queue, %struct.dma_queue* %10, i32 0, i32 0
  %12 = load %struct.dma_desc*, %struct.dma_desc** %11, align 8
  store %struct.dma_desc* %12, %struct.dma_desc** %4, align 8
  %13 = load %struct.dma_desc*, %struct.dma_desc** %4, align 8
  %14 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %13, i32 0, i32 0
  %15 = load %struct.dma_desc*, %struct.dma_desc** %14, align 8
  %16 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %15, i32 0, i32 1
  %17 = load %struct.dma_desc*, %struct.dma_desc** %16, align 8
  %18 = load %struct.dma_queue*, %struct.dma_queue** %3, align 8
  %19 = getelementptr inbounds %struct.dma_queue, %struct.dma_queue* %18, i32 0, i32 0
  store %struct.dma_desc* %17, %struct.dma_desc** %19, align 8
  %20 = load %struct.dma_desc*, %struct.dma_desc** %4, align 8
  %21 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %20, i32 0, i32 0
  %22 = load %struct.dma_desc*, %struct.dma_desc** %21, align 8
  %23 = load %struct.dma_desc*, %struct.dma_desc** %4, align 8
  %24 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %23, i32 0, i32 0
  %25 = load %struct.dma_desc*, %struct.dma_desc** %24, align 8
  %26 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %25, i32 0, i32 1
  store %struct.dma_desc* %22, %struct.dma_desc** %26, align 8
  %27 = load %struct.dma_desc*, %struct.dma_desc** %4, align 8
  %28 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %27, i32 0, i32 0
  %29 = load %struct.dma_desc*, %struct.dma_desc** %28, align 8
  %30 = load %struct.dma_desc*, %struct.dma_desc** %4, align 8
  %31 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %30, i32 0, i32 0
  %32 = load %struct.dma_desc*, %struct.dma_desc** %31, align 8
  %33 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %32, i32 0, i32 0
  store %struct.dma_desc* %29, %struct.dma_desc** %33, align 8
  %34 = load %struct.dma_desc*, %struct.dma_desc** %4, align 8
  store %struct.dma_desc* %34, %struct.dma_desc** %2, align 8
  br label %35

35:                                               ; preds = %9, %8
  %36 = load %struct.dma_desc*, %struct.dma_desc** %2, align 8
  ret %struct.dma_desc* %36
}

declare dso_local i64 @queue_empty(%struct.dma_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
