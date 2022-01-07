; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_convert_member_func_to_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_convert_member_func_to_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@METHOD_TYPE = common dso_local global i64 0, align 8
@pedantic = common dso_local global i64 0, align 8
@warn_pmf2ptr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"converting from %qT to %qT\00", align 1
@PTRMEM_CST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @convert_member_func_to_ptr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @TREE_TYPE(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @TYPE_PTRMEMFUNC_P(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @TREE_CODE(i32 %13)
  %15 = load i64, i64* @METHOD_TYPE, align 8
  %16 = icmp eq i64 %14, %15
  br label %17

17:                                               ; preds = %12, %2
  %18 = phi i1 [ true, %2 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @gcc_assert(i32 %19)
  %21 = load i64, i64* @pedantic, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i64, i64* @warn_pmf2ptr, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23, %17
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @pedwarn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @TREE_CODE(i32 %31)
  %33 = load i64, i64* @METHOD_TYPE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @build_addr_func(i32 %36)
  store i32 %37, i32* %4, align 4
  br label %56

38:                                               ; preds = %30
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @TREE_CODE(i32 %39)
  %41 = load i64, i64* @PTRMEM_CST, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @PTRMEM_CST_MEMBER(i32 %44)
  %46 = call i32 @build_address(i32 %45)
  store i32 %46, i32* %4, align 4
  br label %55

47:                                               ; preds = %38
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @TYPE_PTRMEM_CLASS_TYPE(i32 %48)
  %50 = call i32 @maybe_dummy_object(i32 %49, i32 0)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @build_address(i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @get_member_function_from_ptrfunc(i32* %6, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %47, %43
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @build_nop(i32 %57, i32 %58)
  ret i32 %59
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TYPE_PTRMEMFUNC_P(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @pedwarn(i8*, i32, i32) #1

declare dso_local i32 @build_addr_func(i32) #1

declare dso_local i32 @build_address(i32) #1

declare dso_local i32 @PTRMEM_CST_MEMBER(i32) #1

declare dso_local i32 @maybe_dummy_object(i32, i32) #1

declare dso_local i32 @TYPE_PTRMEM_CLASS_TYPE(i32) #1

declare dso_local i32 @get_member_function_from_ptrfunc(i32*, i32) #1

declare dso_local i32 @build_nop(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
