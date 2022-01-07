; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_dma.c_run_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_dma.c_run_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue = type { i32 }
%struct.qitem = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_queue(%struct.queue* %0) #0 {
  %2 = alloca %struct.queue*, align 8
  %3 = alloca %struct.qitem*, align 8
  store %struct.queue* %0, %struct.queue** %2, align 8
  %4 = load %struct.queue*, %struct.queue** %2, align 8
  %5 = getelementptr inbounds %struct.queue, %struct.queue* %4, i32 0, i32 0
  %6 = call i64 @LIST_EMPTY(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %14

9:                                                ; preds = %1
  %10 = load %struct.queue*, %struct.queue** %2, align 8
  %11 = call %struct.qitem* @go_background(%struct.queue* %10)
  store %struct.qitem* %11, %struct.qitem** %3, align 8
  %12 = load %struct.qitem*, %struct.qitem** %3, align 8
  %13 = call i32 @deliver(%struct.qitem* %12)
  br label %14

14:                                               ; preds = %9, %8
  ret void
}

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local %struct.qitem* @go_background(%struct.queue*) #1

declare dso_local i32 @deliver(%struct.qitem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
