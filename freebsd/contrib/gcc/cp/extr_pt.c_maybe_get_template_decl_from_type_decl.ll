; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_maybe_get_template_decl_from_type_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_maybe_get_template_decl_from_type_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@TYPE_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @maybe_get_template_decl_from_type_decl(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @NULL_TREE, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = call i64 @TREE_CODE(i64 %7)
  %9 = load i64, i64* @TYPE_DECL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %6
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @DECL_ARTIFICIAL(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @TREE_TYPE(i64 %16)
  %18 = call i64 @CLASS_TYPE_P(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @TREE_TYPE(i64 %21)
  %23 = call i64 @CLASSTYPE_TEMPLATE_INFO(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i64, i64* %2, align 8
  %27 = call i32 @TREE_TYPE(i64 %26)
  %28 = call i64 @CLASSTYPE_TI_TEMPLATE(i32 %27)
  br label %31

29:                                               ; preds = %20, %15, %11, %6, %1
  %30 = load i64, i64* %2, align 8
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i64 [ %28, %25 ], [ %30, %29 ]
  ret i64 %32
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_ARTIFICIAL(i64) #1

declare dso_local i64 @CLASS_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @CLASSTYPE_TEMPLATE_INFO(i32) #1

declare dso_local i64 @CLASSTYPE_TI_TEMPLATE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
