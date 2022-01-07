; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_build_component_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_build_component_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processing_template_decl = common dso_local global i64 0, align 8
@COMPONENT_REF = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_component_ref(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @DECL_P(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @TREE_TYPE(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @lookup_member(i32 %11, i32 %12, i32 0, i32 0)
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %9, %2
  %15 = load i64, i64* @processing_template_decl, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load i32, i32* @COMPONENT_REF, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @TREE_TYPE(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @DECL_NAME(i32 %22)
  %24 = load i32, i32* @NULL_TREE, align 4
  %25 = call i32 @build3(i32 %18, i32 %20, i32 %21, i32 %23, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %31

26:                                               ; preds = %14
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @NULL_TREE, align 4
  %30 = call i32 @build_class_member_access_expr(i32 %27, i32 %28, i32 %29, i32 0)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %26, %17
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @DECL_P(i32) #1

declare dso_local i32 @lookup_member(i32, i32, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @build3(i32, i32, i32, i32, i32) #1

declare dso_local i32 @DECL_NAME(i32) #1

declare dso_local i32 @build_class_member_access_expr(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
