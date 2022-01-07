; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_mark_constant_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_mark_constant_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_function_uses_const_pool = common dso_local global i32 0, align 4
@n_deferred_constants = common dso_local global i64 0, align 8
@current_function_epilogue_delay_list = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mark_constant_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_constant_pool() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @current_function_uses_const_pool, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = load i64, i64* @n_deferred_constants, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %32

9:                                                ; preds = %5, %0
  %10 = call i64 (...) @get_insns()
  store i64 %10, i64* %1, align 8
  br label %11

11:                                               ; preds = %17, %9
  %12 = load i64, i64* %1, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @mark_constants(i64 %15)
  br label %17

17:                                               ; preds = %14
  %18 = load i64, i64* %1, align 8
  %19 = call i64 @NEXT_INSN(i64 %18)
  store i64 %19, i64* %1, align 8
  br label %11

20:                                               ; preds = %11
  %21 = load i64, i64* @current_function_epilogue_delay_list, align 8
  store i64 %21, i64* %2, align 8
  br label %22

22:                                               ; preds = %29, %20
  %23 = load i64, i64* %2, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i64, i64* %2, align 8
  %27 = call i64 @XEXP(i64 %26, i32 0)
  %28 = call i32 @mark_constants(i64 %27)
  br label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %2, align 8
  %31 = call i64 @XEXP(i64 %30, i32 1)
  store i64 %31, i64* %2, align 8
  br label %22

32:                                               ; preds = %8, %22
  ret void
}

declare dso_local i64 @get_insns(...) #1

declare dso_local i32 @mark_constants(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
