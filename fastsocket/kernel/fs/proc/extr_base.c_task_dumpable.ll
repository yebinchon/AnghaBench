; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_task_dumpable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_task_dumpable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*)* @task_dumpable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_dumpable(%struct.task_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = call i32 @task_lock(%struct.task_struct* %6)
  %8 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  store %struct.mm_struct* %10, %struct.mm_struct** %5, align 8
  %11 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %12 = icmp ne %struct.mm_struct* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %15 = call i32 @get_dumpable(%struct.mm_struct* %14)
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %18 = call i32 @task_unlock(%struct.task_struct* %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %23

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @get_dumpable(%struct.mm_struct*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
