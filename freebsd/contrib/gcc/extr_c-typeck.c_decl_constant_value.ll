; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_decl_constant_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_decl_constant_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_function_decl = common dso_local global i64 0, align 8
@PARM_DECL = common dso_local global i64 0, align 8
@ERROR_MARK = common dso_local global i64 0, align 8
@CONSTRUCTOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decl_constant_value(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* @current_function_decl, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %43

6:                                                ; preds = %1
  %7 = load i64, i64* %3, align 8
  %8 = call i64 @TREE_CODE(i64 %7)
  %9 = load i64, i64* @PARM_DECL, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %43

11:                                               ; preds = %6
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @TREE_THIS_VOLATILE(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %43, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @TREE_READONLY(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @DECL_INITIAL(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @DECL_INITIAL(i64 %24)
  %26 = call i64 @TREE_CODE(i64 %25)
  %27 = load i64, i64* @ERROR_MARK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load i64, i64* %3, align 8
  %31 = call i64 @DECL_INITIAL(i64 %30)
  %32 = call i64 @TREE_CONSTANT(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i64, i64* %3, align 8
  %36 = call i64 @DECL_INITIAL(i64 %35)
  %37 = call i64 @TREE_CODE(i64 %36)
  %38 = load i64, i64* @CONSTRUCTOR, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i64, i64* %3, align 8
  %42 = call i64 @DECL_INITIAL(i64 %41)
  store i64 %42, i64* %2, align 8
  br label %45

43:                                               ; preds = %34, %29, %23, %19, %15, %11, %6, %1
  %44 = load i64, i64* %3, align 8
  store i64 %44, i64* %2, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i64, i64* %2, align 8
  ret i64 %46
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @TREE_THIS_VOLATILE(i64) #1

declare dso_local i64 @TREE_READONLY(i64) #1

declare dso_local i64 @DECL_INITIAL(i64) #1

declare dso_local i64 @TREE_CONSTANT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
