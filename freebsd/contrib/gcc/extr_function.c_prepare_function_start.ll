; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_prepare_function_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_prepare_function_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfun = common dso_local global i64 0, align 8
@optimize = common dso_local global i32 0, align 4
@cse_not_expected = common dso_local global i32 0, align 4
@caller_save_needed = common dso_local global i64 0, align 8
@reg_renumber = common dso_local global i64 0, align 8
@virtuals_instantiated = common dso_local global i64 0, align 8
@generating_concat_p = common dso_local global i32 0, align 4
@frame_pointer_needed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @prepare_function_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_function_start(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @DECL_STRUCT_FUNCTION(i64 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load i64, i64* %2, align 8
  %11 = call i64 @DECL_STRUCT_FUNCTION(i64 %10)
  store i64 %11, i64* @cfun, align 8
  br label %15

12:                                               ; preds = %5, %1
  %13 = load i64, i64* %2, align 8
  %14 = call i32 @allocate_struct_function(i64 %13)
  br label %15

15:                                               ; preds = %12, %9
  %16 = call i32 (...) @init_emit()
  %17 = load i64, i64* @cfun, align 8
  %18 = call i32 @init_varasm_status(i64 %17)
  %19 = call i32 (...) @init_expr()
  %20 = load i32, i32* @optimize, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* @cse_not_expected, align 4
  store i64 0, i64* @caller_save_needed, align 8
  store i64 0, i64* @reg_renumber, align 8
  store i64 0, i64* @virtuals_instantiated, align 8
  store i32 1, i32* @generating_concat_p, align 4
  store i64 0, i64* @frame_pointer_needed, align 8
  ret void
}

declare dso_local i64 @DECL_STRUCT_FUNCTION(i64) #1

declare dso_local i32 @allocate_struct_function(i64) #1

declare dso_local i32 @init_emit(...) #1

declare dso_local i32 @init_varasm_status(i64) #1

declare dso_local i32 @init_expr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
