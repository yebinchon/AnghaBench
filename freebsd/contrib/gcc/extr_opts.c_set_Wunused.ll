; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_set_Wunused.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_set_Wunused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@warn_unused_function = common dso_local global i32 0, align 4
@warn_unused_label = common dso_local global i32 0, align 4
@maybe_warn_unused_parameter = common dso_local global i32 0, align 4
@extra_warnings = common dso_local global i64 0, align 8
@warn_unused_parameter = common dso_local global i32 0, align 4
@warn_unused_variable = common dso_local global i32 0, align 4
@warn_unused_value = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_Wunused(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @warn_unused_function, align 4
  %4 = load i32, i32* %2, align 4
  store i32 %4, i32* @warn_unused_label, align 4
  %5 = load i32, i32* %2, align 4
  store i32 %5, i32* @maybe_warn_unused_parameter, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* @extra_warnings, align 8
  %10 = icmp ne i64 %9, 0
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i1 [ false, %1 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  store i32 %13, i32* @warn_unused_parameter, align 4
  %14 = load i32, i32* %2, align 4
  store i32 %14, i32* @warn_unused_variable, align 4
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* @warn_unused_value, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
