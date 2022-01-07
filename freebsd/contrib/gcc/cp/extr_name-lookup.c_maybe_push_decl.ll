; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_maybe_push_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_maybe_push_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@PARM_DECL = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@NAMESPACE_DECL = common dso_local global i64 0, align 8
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@UNKNOWN_TYPE = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @maybe_push_decl(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i64 @TREE_TYPE(i64 %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @error_mark_node, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %48, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @TREE_CODE(i64 %11)
  %13 = load i64, i64* @PARM_DECL, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @DECL_CONTEXT(i64 %16)
  %18 = load i64, i64* @NULL_TREE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @DECL_CONTEXT(i64 %21)
  %23 = call i64 @TREE_CODE(i64 %22)
  %24 = load i64, i64* @NAMESPACE_DECL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %48, label %26

26:                                               ; preds = %20, %15, %10
  %27 = load i64, i64* %3, align 8
  %28 = call i64 @TREE_CODE(i64 %27)
  %29 = load i64, i64* @TEMPLATE_DECL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = call i32 (...) @namespace_bindings_p()
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %31, %26
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @TREE_CODE(i64 %35)
  %37 = load i64, i64* @UNKNOWN_TYPE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* %3, align 8
  %41 = call i64 @TREE_CODE(i64 %40)
  %42 = load i64, i64* @FUNCTION_DECL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i64, i64* %3, align 8
  %46 = call i64 @DECL_TEMPLATE_SPECIALIZATION(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %34, %31, %20, %1
  %49 = load i64, i64* %3, align 8
  store i64 %49, i64* %2, align 8
  br label %53

50:                                               ; preds = %44, %39
  %51 = load i64, i64* %3, align 8
  %52 = call i64 @pushdecl(i64 %51)
  store i64 %52, i64* %2, align 8
  br label %53

53:                                               ; preds = %50, %48
  %54 = load i64, i64* %2, align 8
  ret i64 %54
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_CONTEXT(i64) #1

declare dso_local i32 @namespace_bindings_p(...) #1

declare dso_local i64 @DECL_TEMPLATE_SPECIALIZATION(i64) #1

declare dso_local i64 @pushdecl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
