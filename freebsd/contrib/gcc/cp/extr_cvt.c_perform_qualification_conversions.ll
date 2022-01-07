; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cvt.c_perform_qualification_conversions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cvt.c_perform_qualification_conversions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perform_qualification_conversions(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @TREE_TYPE(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @same_type_p(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %3, align 4
  br label %62

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @TYPE_PTR_P(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @TYPE_PTR_P(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @TREE_TYPE(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @TREE_TYPE(i32 %26)
  %28 = call i64 @comp_ptr_ttypes(i32 %25, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @build_nop(i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %62

34:                                               ; preds = %23, %19, %15
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @TYPE_PTR_TO_MEMBER_P(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @TYPE_PTR_TO_MEMBER_P(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @TYPE_PTRMEM_CLASS_TYPE(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @TYPE_PTRMEM_CLASS_TYPE(i32 %45)
  %47 = call i64 @same_type_p(i32 %44, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i32 %52)
  %54 = call i64 @comp_ptr_ttypes(i32 %51, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @build_nop(i32 %57, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %49, %42, %38, %34
  %61 = load i32, i32* @error_mark_node, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %56, %30, %13
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @same_type_p(i32, i32) #1

declare dso_local i64 @TYPE_PTR_P(i32) #1

declare dso_local i64 @comp_ptr_ttypes(i32, i32) #1

declare dso_local i32 @build_nop(i32, i32) #1

declare dso_local i64 @TYPE_PTR_TO_MEMBER_P(i32) #1

declare dso_local i32 @TYPE_PTRMEM_CLASS_TYPE(i32) #1

declare dso_local i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
