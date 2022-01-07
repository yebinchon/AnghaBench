; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_cp_emit_debug_info_for_using.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_cp_emit_debug_info_for_using.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i64)* }

@sorrycount = common dso_local global i64 0, align 8
@errorcount = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@global_namespace = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@debug_hooks = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cp_emit_debug_info_for_using(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* @sorrycount, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i64, i64* @errorcount, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %60

11:                                               ; preds = %7
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @TREE_CODE(i64 %12)
  %14 = load i64, i64* @FUNCTION_DECL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @DECL_EXTERNAL(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @DECL_BUILT_IN(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %60

25:                                               ; preds = %20, %16, %11
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @global_namespace, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i64, i64* @NULL_TREE, align 8
  store i64 %30, i64* %4, align 8
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i64, i64* %3, align 8
  %33 = call i64 @BASELINK_P(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i64, i64* %3, align 8
  %37 = call i64 @BASELINK_FUNCTIONS(i64 %36)
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i64, i64* %3, align 8
  %40 = call i64 @OVL_CURRENT(i64 %39)
  store i64 %40, i64* %3, align 8
  br label %41

41:                                               ; preds = %57, %38
  %42 = load i64, i64* %3, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load i64, i64* %3, align 8
  %46 = call i64 @TREE_CODE(i64 %45)
  %47 = load i64, i64* @TEMPLATE_DECL, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_hooks, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (i64, i64)*, i32 (i64, i64)** %51, align 8
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* %4, align 8
  %55 = call i32 %52(i64 %53, i64 %54)
  br label %56

56:                                               ; preds = %49, %44
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %3, align 8
  %59 = call i64 @OVL_NEXT(i64 %58)
  store i64 %59, i64* %3, align 8
  br label %41

60:                                               ; preds = %10, %24, %41
  ret void
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_EXTERNAL(i64) #1

declare dso_local i64 @DECL_BUILT_IN(i64) #1

declare dso_local i64 @BASELINK_P(i64) #1

declare dso_local i64 @BASELINK_FUNCTIONS(i64) #1

declare dso_local i64 @OVL_CURRENT(i64) #1

declare dso_local i64 @OVL_NEXT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
