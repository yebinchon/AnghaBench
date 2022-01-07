; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_c_convert_parm_for_inlining.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_c_convert_parm_for_inlining.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (i32)* }

@ic_argpass_nonproto = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@integer_type_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_convert_parm_for_inlining(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @TREE_TYPE(i32 %15)
  %17 = call i64 @TYPE_ARG_TYPES(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @TREE_TYPE(i32 %20)
  %22 = call i64 @TYPE_MAIN_VARIANT(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @TREE_TYPE(i32 %23)
  %25 = call i64 @TYPE_MAIN_VARIANT(i32 %24)
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19, %4
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %5, align 4
  br label %59

29:                                               ; preds = %19, %14
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @TREE_TYPE(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @ic_argpass_nonproto, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @convert_for_assignment(i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i64 (i32)*, i64 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @TREE_TYPE(i32 %40)
  %42 = call i64 %39(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %29
  %45 = load i32, i32* %11, align 4
  %46 = call i64 @INTEGRAL_TYPE_P(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @TYPE_PRECISION(i32 %49)
  %51 = load i32, i32* @integer_type_node, align 4
  %52 = call i64 @TYPE_PRECISION(i32 %51)
  %53 = icmp slt i64 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @default_conversion(i32 %55)
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %54, %48, %44, %29
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %27
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @TYPE_ARG_TYPES(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i32) #1

declare dso_local i32 @convert_for_assignment(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i64 @TYPE_PRECISION(i32) #1

declare dso_local i32 @default_conversion(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
