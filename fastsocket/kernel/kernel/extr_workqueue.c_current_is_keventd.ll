; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_current_is_keventd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_current_is_keventd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpu_workqueue_struct = type { i64 }

@keventd_wq = common dso_local global %struct.TYPE_2__* null, align 8
@current = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @current_is_keventd() #0 {
  %1 = alloca %struct.cpu_workqueue_struct*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @raw_smp_processor_id()
  store i32 %4, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keventd_wq, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keventd_wq, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call %struct.cpu_workqueue_struct* @per_cpu_ptr(i32 %12, i32 %13)
  store %struct.cpu_workqueue_struct* %14, %struct.cpu_workqueue_struct** %1, align 8
  %15 = load i64, i64* @current, align 8
  %16 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %1, align 8
  %17 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  store i32 1, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %0
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.cpu_workqueue_struct* @per_cpu_ptr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
