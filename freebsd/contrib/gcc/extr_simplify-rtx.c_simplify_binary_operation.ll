; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_simplify-rtx.c_simplify_binary_operation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_simplify-rtx.c_simplify_binary_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTX_COMPARE = common dso_local global i64 0, align 8
@RTX_COMM_COMPARE = common dso_local global i64 0, align 8
@RTX_COMM_ARITH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @simplify_binary_operation(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @GET_RTX_CLASS(i32 %13)
  %15 = load i64, i64* @RTX_COMPARE, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @gcc_assert(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @GET_RTX_CLASS(i32 %19)
  %21 = load i64, i64* @RTX_COMM_COMPARE, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @gcc_assert(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @GET_RTX_CLASS(i32 %25)
  %27 = load i64, i64* @RTX_COMM_ARITH, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %4
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @swap_commutative_operands_p(i64 %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i64, i64* %8, align 8
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %12, align 8
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %34, %29, %4
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @avoid_constant_pool_reference(i64 %39)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i64 @avoid_constant_pool_reference(i64 %41)
  store i64 %42, i64* %11, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i64 @simplify_const_binary_operation(i32 %43, i32 %44, i64 %45, i64 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i64, i64* %12, align 8
  store i64 %51, i64* %5, align 8
  br label %60

52:                                               ; preds = %38
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i64 @simplify_binary_operation_1(i32 %53, i32 %54, i64 %55, i64 %56, i64 %57, i64 %58)
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %52, %50
  %61 = load i64, i64* %5, align 8
  ret i64 %61
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_RTX_CLASS(i32) #1

declare dso_local i64 @swap_commutative_operands_p(i64, i64) #1

declare dso_local i64 @avoid_constant_pool_reference(i64) #1

declare dso_local i64 @simplify_const_binary_operation(i32, i32, i64, i64) #1

declare dso_local i64 @simplify_binary_operation_1(i32, i32, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
