; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_set_threads_resume_sc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_set_threads_resume_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf = type { %struct.proc* }
%struct.proc = type { i64, i64, i64, %struct.proc* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inf_set_threads_resume_sc(%struct.inf* %0, %struct.proc* %1, i32 %2) #0 {
  %4 = alloca %struct.inf*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc*, align 8
  store %struct.inf* %0, %struct.inf** %4, align 8
  store %struct.proc* %1, %struct.proc** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.inf*, %struct.inf** %4, align 8
  %9 = call i32 @inf_update_procs(%struct.inf* %8)
  %10 = load %struct.inf*, %struct.inf** %4, align 8
  %11 = getelementptr inbounds %struct.inf, %struct.inf* %10, i32 0, i32 0
  %12 = load %struct.proc*, %struct.proc** %11, align 8
  store %struct.proc* %12, %struct.proc** %7, align 8
  br label %13

13:                                               ; preds = %40, %3
  %14 = load %struct.proc*, %struct.proc** %7, align 8
  %15 = icmp ne %struct.proc* %14, null
  br i1 %15, label %16, label %44

16:                                               ; preds = %13
  %17 = load %struct.proc*, %struct.proc** %7, align 8
  %18 = load %struct.proc*, %struct.proc** %5, align 8
  %19 = icmp eq %struct.proc* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.proc*, %struct.proc** %7, align 8
  %22 = getelementptr inbounds %struct.proc, %struct.proc* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  br label %39

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.proc*, %struct.proc** %7, align 8
  %28 = getelementptr inbounds %struct.proc, %struct.proc* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.proc*, %struct.proc** %7, align 8
  %31 = getelementptr inbounds %struct.proc, %struct.proc* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  br label %38

32:                                               ; preds = %23
  %33 = load %struct.proc*, %struct.proc** %7, align 8
  %34 = getelementptr inbounds %struct.proc, %struct.proc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.proc*, %struct.proc** %7, align 8
  %37 = getelementptr inbounds %struct.proc, %struct.proc* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %32, %26
  br label %39

39:                                               ; preds = %38, %20
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.proc*, %struct.proc** %7, align 8
  %42 = getelementptr inbounds %struct.proc, %struct.proc* %41, i32 0, i32 3
  %43 = load %struct.proc*, %struct.proc** %42, align 8
  store %struct.proc* %43, %struct.proc** %7, align 8
  br label %13

44:                                               ; preds = %13
  ret void
}

declare dso_local i32 @inf_update_procs(%struct.inf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
