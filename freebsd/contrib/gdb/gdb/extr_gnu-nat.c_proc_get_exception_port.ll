; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_proc_get_exception_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_proc_get_exception_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_get_exception_port(%struct.proc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i32*, align 8
  store %struct.proc* %0, %struct.proc** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.proc*, %struct.proc** %4, align 8
  %7 = call i64 @proc_is_task(%struct.proc* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.proc*, %struct.proc** %4, align 8
  %11 = getelementptr inbounds %struct.proc, %struct.proc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @task_get_exception_port(i32 %12, i32* %13)
  store i32 %14, i32* %3, align 4
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.proc*, %struct.proc** %4, align 8
  %17 = getelementptr inbounds %struct.proc, %struct.proc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @thread_get_exception_port(i32 %18, i32* %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %15, %9
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i64 @proc_is_task(%struct.proc*) #1

declare dso_local i32 @task_get_exception_port(i32, i32*) #1

declare dso_local i32 @thread_get_exception_port(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
