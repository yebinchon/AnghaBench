; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_adjust_stack_reference.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_adjust_stack_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_function_decl = common dso_local global i32 0, align 4
@arg_pointer_rtx = common dso_local global i32 0, align 4
@stack_pointer_rtx = common dso_local global i32 0, align 4
@frame_pointer_rtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @adjust_stack_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adjust_stack_reference(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @current_function_decl, align 4
  %9 = call i64 @ARG_POINTER_CFA_OFFSET(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = sub nsw i64 %11, %9
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @arg_pointer_rtx, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @plus_constant(i32 %14, i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @XEXP(i64 %17, i32 0)
  %19 = call i32 @copy_rtx(i32 %18)
  %20 = load i32, i32* @stack_pointer_rtx, align 4
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @replace_rtx(i32 %19, i32 %20, i64 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @simplify_rtx(i64 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i64, i64* %7, align 8
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %27, %2
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @replace_equiv_address_nv(i64 %30, i64 %31)
  ret i64 %32
}

declare dso_local i64 @ARG_POINTER_CFA_OFFSET(i32) #1

declare dso_local i64 @plus_constant(i32, i32) #1

declare dso_local i64 @replace_rtx(i32, i32, i64) #1

declare dso_local i32 @copy_rtx(i32) #1

declare dso_local i32 @XEXP(i64, i32) #1

declare dso_local i64 @simplify_rtx(i64) #1

declare dso_local i64 @replace_equiv_address_nv(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
