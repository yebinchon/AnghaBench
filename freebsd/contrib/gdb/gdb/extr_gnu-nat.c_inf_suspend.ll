; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf = type { i32, %struct.TYPE_2__*, %struct.proc* }
%struct.TYPE_2__ = type { i32 }
%struct.proc = type { i32, i32, %struct.proc* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inf_suspend(%struct.inf* %0) #0 {
  %2 = alloca %struct.inf*, align 8
  %3 = alloca %struct.proc*, align 8
  store %struct.inf* %0, %struct.inf** %2, align 8
  %4 = load %struct.inf*, %struct.inf** %2, align 8
  %5 = call i32 @inf_update_procs(%struct.inf* %4)
  %6 = load %struct.inf*, %struct.inf** %2, align 8
  %7 = getelementptr inbounds %struct.inf, %struct.inf* %6, i32 0, i32 2
  %8 = load %struct.proc*, %struct.proc** %7, align 8
  store %struct.proc* %8, %struct.proc** %3, align 8
  br label %9

9:                                                ; preds = %18, %1
  %10 = load %struct.proc*, %struct.proc** %3, align 8
  %11 = icmp ne %struct.proc* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load %struct.proc*, %struct.proc** %3, align 8
  %14 = getelementptr inbounds %struct.proc, %struct.proc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.proc*, %struct.proc** %3, align 8
  %17 = getelementptr inbounds %struct.proc, %struct.proc* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %12
  %19 = load %struct.proc*, %struct.proc** %3, align 8
  %20 = getelementptr inbounds %struct.proc, %struct.proc* %19, i32 0, i32 2
  %21 = load %struct.proc*, %struct.proc** %20, align 8
  store %struct.proc* %21, %struct.proc** %3, align 8
  br label %9

22:                                               ; preds = %9
  %23 = load %struct.inf*, %struct.inf** %2, align 8
  %24 = getelementptr inbounds %struct.inf, %struct.inf* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.inf*, %struct.inf** %2, align 8
  %29 = getelementptr inbounds %struct.inf, %struct.inf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.inf*, %struct.inf** %2, align 8
  %32 = getelementptr inbounds %struct.inf, %struct.inf* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  br label %35

35:                                               ; preds = %27, %22
  %36 = load %struct.inf*, %struct.inf** %2, align 8
  %37 = call i32 @inf_update_suspends(%struct.inf* %36)
  ret void
}

declare dso_local i32 @inf_update_procs(%struct.inf*) #1

declare dso_local i32 @inf_update_suspends(%struct.inf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
