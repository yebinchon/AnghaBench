; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_maybe_make_one_only.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_maybe_make_one_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_weak = common dso_local global i32 0, align 4
@TARGET_WEAK_NOT_IN_ARCHIVE_TOC = common dso_local global i32 0, align 4
@VAR_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @maybe_make_one_only(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @flag_weak, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %29

7:                                                ; preds = %1
  %8 = load i32, i32* @TARGET_WEAK_NOT_IN_ARCHIVE_TOC, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @DECL_EXPLICIT_INSTANTIATION(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @DECL_TEMPLATE_SPECIALIZATION(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14, %7
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @make_decl_one_only(i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = call i64 @TREE_CODE(i32 %21)
  %23 = load i64, i64* @VAR_DECL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @mark_decl_referenced(i32 %26)
  br label %28

28:                                               ; preds = %25, %18
  br label %29

29:                                               ; preds = %6, %28, %14, %10
  ret void
}

declare dso_local i32 @DECL_EXPLICIT_INSTANTIATION(i32) #1

declare dso_local i32 @DECL_TEMPLATE_SPECIALIZATION(i32) #1

declare dso_local i32 @make_decl_one_only(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @mark_decl_referenced(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
