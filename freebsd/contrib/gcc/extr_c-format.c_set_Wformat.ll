; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-format.c_set_Wformat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-format.c_set_Wformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@warn_format = common dso_local global i32 0, align 4
@warn_format_extra_args = common dso_local global i32 0, align 4
@warn_format_zero_length = common dso_local global i32 0, align 4
@warn_format_nonliteral = common dso_local global i32 0, align 4
@warn_format_security = common dso_local global i32 0, align 4
@warn_format_y2k = common dso_local global i32 0, align 4
@warn_nonnull = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_Wformat(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @warn_format, align 4
  %4 = load i32, i32* %2, align 4
  store i32 %4, i32* @warn_format_extra_args, align 4
  %5 = load i32, i32* %2, align 4
  store i32 %5, i32* @warn_format_zero_length, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* @warn_format_nonliteral, align 4
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* @warn_format_security, align 4
  %11 = load i32, i32* %2, align 4
  store i32 %11, i32* @warn_format_y2k, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  store i32 %16, i32* @warn_nonnull, align 4
  br label %17

17:                                               ; preds = %15, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
