; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_is_ancestor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_is_ancestor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAMESPACE_DECL = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@global_namespace = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_ancestor(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i64 @TREE_CODE(i64 %6)
  %8 = load i64, i64* @NAMESPACE_DECL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @TREE_CODE(i64 %11)
  %13 = load i64, i64* @FUNCTION_DECL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @CLASS_TYPE_P(i64 %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %10, %2
  %20 = phi i1 [ true, %10 ], [ true, %2 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @gcc_assert(i32 %21)
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @TREE_CODE(i64 %23)
  %25 = load i64, i64* @NAMESPACE_DECL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @CLASS_TYPE_P(i64 %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %27, %19
  %32 = phi i1 [ true, %19 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @gcc_assert(i32 %33)
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @global_namespace, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %59

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %56
  %41 = load i64, i64* %5, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %59

44:                                               ; preds = %40
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %59

49:                                               ; preds = %44
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @TYPE_P(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @TYPE_NAME(i64 %54)
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %53, %49
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @DECL_CONTEXT(i64 %57)
  store i64 %58, i64* %5, align 8
  br label %40

59:                                               ; preds = %48, %43, %38
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i64 @TYPE_NAME(i64) #1

declare dso_local i64 @DECL_CONTEXT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
