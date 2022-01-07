; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_addr_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_addr_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@METHOD_TYPE = common dso_local global i64 0, align 8
@OFFSET_REF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_addr_func(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @TREE_TYPE(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @TREE_CODE(i32 %8)
  %10 = load i64, i64* @METHOD_TYPE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @TREE_CODE(i32 %13)
  %15 = load i64, i64* @OFFSET_REF, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @TREE_OPERAND(i32 %18, i32 0)
  %20 = call i32 @build_address(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @TREE_OPERAND(i32 %21, i32 1)
  %23 = call i32 @get_member_function_from_ptrfunc(i32* %5, i32 %22)
  store i32 %23, i32* %2, align 4
  br label %32

24:                                               ; preds = %12
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @build_address(i32 %25)
  store i32 %26, i32* %3, align 4
  br label %30

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @decay_conversion(i32 %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %3, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %17
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @build_address(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @get_member_function_from_ptrfunc(i32*, i32) #1

declare dso_local i32 @decay_conversion(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
