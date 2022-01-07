; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_cxx_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_cxx_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@cfun = common dso_local global i64 0, align 8
@cp_function_chain = common dso_local global %struct.TYPE_2__* null, align 8
@error_mark_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_cxx_call(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @build_call(i64 %7, i64 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @get_callee_fndecl(i64 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @TREE_NOTHROW(i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %14, %2
  %19 = call i64 (...) @at_function_scope_p()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i64, i64* @cfun, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cp_function_chain, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %21, %18, %14
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @fold_if_not_in_template(i64 %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @TREE_TYPE(i64 %30)
  %32 = call i64 @VOID_TYPE_P(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i64, i64* %4, align 8
  store i64 %35, i64* %3, align 8
  br label %57

36:                                               ; preds = %27
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @require_complete_type(i64 %37)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @error_mark_node, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i64, i64* @error_mark_node, align 8
  store i64 %43, i64* %3, align 8
  br label %57

44:                                               ; preds = %36
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @TREE_TYPE(i64 %45)
  %47 = call i64 @IS_AGGR_TYPE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @TREE_TYPE(i64 %50)
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @build_cplus_new(i32 %51, i64 %52)
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i64, i64* %4, align 8
  %56 = call i64 @convert_from_reference(i64 %55)
  store i64 %56, i64* %3, align 8
  br label %57

57:                                               ; preds = %54, %42, %34
  %58 = load i64, i64* %3, align 8
  ret i64 %58
}

declare dso_local i64 @build_call(i64, i64) #1

declare dso_local i64 @get_callee_fndecl(i64) #1

declare dso_local i32 @TREE_NOTHROW(i64) #1

declare dso_local i64 @at_function_scope_p(...) #1

declare dso_local i64 @fold_if_not_in_template(i64) #1

declare dso_local i64 @VOID_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @require_complete_type(i64) #1

declare dso_local i64 @IS_AGGR_TYPE(i32) #1

declare dso_local i64 @build_cplus_new(i32, i64) #1

declare dso_local i64 @convert_from_reference(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
