; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_convert_to_base_statically.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_convert_to_base_statically.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADDR_EXPR = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@INDIRECT_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @convert_to_base_statically(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @TREE_TYPE(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @BINFO_TYPE(i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @SAME_BINFO_TYPE_P(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @build_pointer_type(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @ADDR_EXPR, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @build_unary_op(i32 %17, i32 %18, i32 1)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @BINFO_OFFSET(i32 %20)
  %22 = call i32 @integer_zerop(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %14
  %25 = load i32, i32* @PLUS_EXPR, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @BINFO_OFFSET(i32 %29)
  %31 = call i32 @build_nop(i32 %28, i32 %30)
  %32 = call i32 @build2(i32 %25, i32 %26, i32 %27, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %24, %14
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @BINFO_TYPE(i32 %34)
  %36 = call i32 @build_pointer_type(i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @build_nop(i32 %36, i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @INDIRECT_REF, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @BINFO_TYPE(i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @build1(i32 %39, i32 %41, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %33, %2
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @SAME_BINFO_TYPE_P(i32, i32) #1

declare dso_local i32 @BINFO_TYPE(i32) #1

declare dso_local i32 @build_pointer_type(i32) #1

declare dso_local i32 @build_unary_op(i32, i32, i32) #1

declare dso_local i32 @integer_zerop(i32) #1

declare dso_local i32 @BINFO_OFFSET(i32) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @build_nop(i32, i32) #1

declare dso_local i32 @build1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
