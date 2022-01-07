; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_type_passed_as.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_type_passed_as.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (i32)* }

@TYPE_QUAL_RESTRICT = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@integer_type_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @type_passed_as(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i64 @TREE_ADDRESSABLE(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @build_reference_type(i32 %7)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @TYPE_QUAL_RESTRICT, align 4
  %11 = call i32 @build_qualified_type(i32 %9, i32 %10)
  store i32 %11, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = load i64 (i32)*, i64 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i64 %13(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @INTEGRAL_TYPE_P(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  %23 = call i64 @COMPLETE_TYPE_P(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @TYPE_SIZE(i32 %26)
  %28 = load i32, i32* @integer_type_node, align 4
  %29 = call i32 @TYPE_SIZE(i32 %28)
  %30 = call i64 @INT_CST_LT_UNSIGNED(i32 %27, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @integer_type_node, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %25, %21, %17, %12
  br label %35

35:                                               ; preds = %34, %6
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @TREE_ADDRESSABLE(i32) #1

declare dso_local i32 @build_reference_type(i32) #1

declare dso_local i32 @build_qualified_type(i32, i32) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i64 @COMPLETE_TYPE_P(i32) #1

declare dso_local i64 @INT_CST_LT_UNSIGNED(i32, i32) #1

declare dso_local i32 @TYPE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
