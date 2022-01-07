; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_resolve_overloaded_builtin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_resolve_overloaded_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)* }

@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i32 0, align 4
@built_in_decls = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resolve_overloaded_builtin(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @DECL_FUNCTION_CODE(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @DECL_BUILT_IN_CLASS(i32 %12)
  switch i32 %13, label %25 [
    i32 132, label %14
    i32 134, label %15
  ]

14:                                               ; preds = %2
  br label %27

15:                                               ; preds = %2
  %16 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %17 = icmp ne i32 (i32, i32)* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 %19(i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %71

23:                                               ; preds = %15
  %24 = load i32, i32* @NULL_TREE, align 4
  store i32 %24, i32* %3, align 4
  br label %71

25:                                               ; preds = %2
  %26 = load i32, i32* @NULL_TREE, align 4
  store i32 %26, i32* %3, align 4
  br label %71

27:                                               ; preds = %14
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %69 [
    i32 142, label %29
    i32 138, label %29
    i32 139, label %29
    i32 141, label %29
    i32 137, label %29
    i32 140, label %29
    i32 145, label %29
    i32 130, label %29
    i32 131, label %29
    i32 144, label %29
    i32 128, label %29
    i32 133, label %29
    i32 143, label %29
    i32 129, label %29
    i32 135, label %29
    i32 136, label %29
  ]

29:                                               ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @sync_resolve_size(i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @error_mark_node, align 4
  store i32 %36, i32* %3, align 4
  br label %71

37:                                               ; preds = %29
  %38 = load i32*, i32** @built_in_decls, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @exact_log2(i32 %40)
  %42 = add i32 %39, %41
  %43 = add i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %38, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @sync_resolve_params(i32 %47, i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %37
  %53 = load i32, i32* @error_mark_node, align 4
  store i32 %53, i32* %3, align 4
  br label %71

54:                                               ; preds = %37
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @build_function_call(i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 143
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 136
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @sync_resolve_return(i32 %64, i32 %65)
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %63, %60, %54
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %3, align 4
  br label %71

69:                                               ; preds = %27
  %70 = load i32, i32* @NULL_TREE, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %67, %52, %35, %25, %23, %18
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @DECL_FUNCTION_CODE(i32) #1

declare dso_local i32 @DECL_BUILT_IN_CLASS(i32) #1

declare dso_local i32 @sync_resolve_size(i32, i32) #1

declare dso_local i32 @exact_log2(i32) #1

declare dso_local i32 @sync_resolve_params(i32, i32, i32) #1

declare dso_local i32 @build_function_call(i32, i32) #1

declare dso_local i32 @sync_resolve_return(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
