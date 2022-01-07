; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-deps.c_add_dependence_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-deps.c_add_dependence_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32, i32)* @add_dependence_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_dependence_list(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %9

9:                                                ; preds = %28, %4
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @XEXP(i64 %17, i32 0)
  %19 = call i32 @sched_insns_conditions_mutex_p(i64 %16, i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15, %12
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @XEXP(i64 %23, i32 0)
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @add_dependence(i64 %22, i64 %24, i32 %25)
  br label %27

27:                                               ; preds = %21, %15
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @XEXP(i64 %29, i32 1)
  store i64 %30, i64* %6, align 8
  br label %9

31:                                               ; preds = %9
  ret void
}

declare dso_local i32 @sched_insns_conditions_mutex_p(i64, i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @add_dependence(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
