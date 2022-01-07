; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_update_procs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_update_procs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inf_update_procs(%struct.inf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inf*, align 8
  store %struct.inf* %0, %struct.inf** %3, align 8
  %4 = load %struct.inf*, %struct.inf** %3, align 8
  %5 = getelementptr inbounds %struct.inf, %struct.inf* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

9:                                                ; preds = %1
  %10 = load %struct.inf*, %struct.inf** %3, align 8
  %11 = getelementptr inbounds %struct.inf, %struct.inf* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load %struct.inf*, %struct.inf** %3, align 8
  %16 = call i32 @inf_validate_procs(%struct.inf* %15)
  br label %17

17:                                               ; preds = %14, %9
  %18 = load %struct.inf*, %struct.inf** %3, align 8
  %19 = getelementptr inbounds %struct.inf, %struct.inf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %17, %8
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @inf_validate_procs(%struct.inf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
