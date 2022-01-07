; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_get_guard_cond.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_get_guard_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (...)* }

@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@integer_one_node = common dso_local global i32 0, align 4
@BIT_AND_EXPR = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@EQ_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_guard_cond(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @get_guard_bits(i32 %4)
  store i32 %5, i32* %2, align 4
  %6 = load i64 (...)*, i64 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %7 = call i64 (...) %6()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load i32, i32* @integer_one_node, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @TREE_TYPE(i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @TREE_TYPE(i32 %13)
  %15 = call i32 @same_type_p(i32 %12, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %9
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @TREE_TYPE(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @convert(i32 %19, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %17, %9
  %23 = load i32, i32* @BIT_AND_EXPR, align 4
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @cp_build_binary_op(i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %22, %1
  %28 = load i32, i32* @integer_zero_node, align 4
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @TREE_TYPE(i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @TREE_TYPE(i32 %31)
  %33 = call i32 @same_type_p(i32 %30, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @TREE_TYPE(i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @convert(i32 %37, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %27
  %41 = load i32, i32* @EQ_EXPR, align 4
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @cp_build_binary_op(i32 %41, i32 %42, i32 %43)
  ret i32 %44
}

declare dso_local i32 @get_guard_bits(i32) #1

declare dso_local i32 @same_type_p(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @convert(i32, i32) #1

declare dso_local i32 @cp_build_binary_op(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
