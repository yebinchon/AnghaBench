; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_dfa.c_increase_max_dfas.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_dfa.c_increase_max_dfas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DFAS_INCREMENT = common dso_local global i64 0, align 8
@current_max_dfas = common dso_local global i32 0, align 4
@num_reallocs = common dso_local global i32 0, align 4
@base = common dso_local global i64 0, align 8
@def = common dso_local global i64 0, align 8
@dfasiz = common dso_local global i64 0, align 8
@accsiz = common dso_local global i64 0, align 8
@dhash = common dso_local global i64 0, align 8
@dss = common dso_local global i32 0, align 4
@dfaacc = common dso_local global i32 0, align 4
@nultrans = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @increase_max_dfas() #0 {
  %1 = load i64, i64* @MAX_DFAS_INCREMENT, align 8
  %2 = load i32, i32* @current_max_dfas, align 4
  %3 = sext i32 %2 to i64
  %4 = add nsw i64 %3, %1
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* @current_max_dfas, align 4
  %6 = load i32, i32* @num_reallocs, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @num_reallocs, align 4
  %8 = load i64, i64* @base, align 8
  %9 = load i32, i32* @current_max_dfas, align 4
  %10 = call i64 @reallocate_integer_array(i64 %8, i32 %9)
  store i64 %10, i64* @base, align 8
  %11 = load i64, i64* @def, align 8
  %12 = load i32, i32* @current_max_dfas, align 4
  %13 = call i64 @reallocate_integer_array(i64 %11, i32 %12)
  store i64 %13, i64* @def, align 8
  %14 = load i64, i64* @dfasiz, align 8
  %15 = load i32, i32* @current_max_dfas, align 4
  %16 = call i64 @reallocate_integer_array(i64 %14, i32 %15)
  store i64 %16, i64* @dfasiz, align 8
  %17 = load i64, i64* @accsiz, align 8
  %18 = load i32, i32* @current_max_dfas, align 4
  %19 = call i64 @reallocate_integer_array(i64 %17, i32 %18)
  store i64 %19, i64* @accsiz, align 8
  %20 = load i64, i64* @dhash, align 8
  %21 = load i32, i32* @current_max_dfas, align 4
  %22 = call i64 @reallocate_integer_array(i64 %20, i32 %21)
  store i64 %22, i64* @dhash, align 8
  %23 = load i32, i32* @dss, align 4
  %24 = load i32, i32* @current_max_dfas, align 4
  %25 = call i32 @reallocate_int_ptr_array(i32 %23, i32 %24)
  store i32 %25, i32* @dss, align 4
  %26 = load i32, i32* @dfaacc, align 4
  %27 = load i32, i32* @current_max_dfas, align 4
  %28 = call i32 @reallocate_dfaacc_union(i32 %26, i32 %27)
  store i32 %28, i32* @dfaacc, align 4
  %29 = load i64, i64* @nultrans, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %0
  %32 = load i64, i64* @nultrans, align 8
  %33 = load i32, i32* @current_max_dfas, align 4
  %34 = call i64 @reallocate_integer_array(i64 %32, i32 %33)
  store i64 %34, i64* @nultrans, align 8
  br label %35

35:                                               ; preds = %31, %0
  ret void
}

declare dso_local i64 @reallocate_integer_array(i64, i32) #1

declare dso_local i32 @reallocate_int_ptr_array(i32, i32) #1

declare dso_local i32 @reallocate_dfaacc_union(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
