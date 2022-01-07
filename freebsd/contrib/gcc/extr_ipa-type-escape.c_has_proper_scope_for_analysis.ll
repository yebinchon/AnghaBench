; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_has_proper_scope_for_analysis.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_has_proper_scope_for_analysis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"used\00", align 1
@FULL_ESCAPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @has_proper_scope_for_analysis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @has_proper_scope_for_analysis(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @TREE_TYPE(i32 %4)
  %6 = call i32 @get_canon_type(i32 %5, i32 0, i32 0)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %60

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @DECL_ATTRIBUTES(i32 %11)
  %13 = call i64 @lookup_attribute(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @FULL_ESCAPE, align 4
  %18 = call i32 @mark_interesting_type(i32 %16, i32 %17)
  br label %60

19:                                               ; preds = %10
  %20 = load i32, i32* %2, align 4
  %21 = call i64 @TREE_THIS_VOLATILE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %60

24:                                               ; preds = %19
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @TREE_STATIC(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %2, align 4
  %30 = call i64 @DECL_EXTERNAL(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %60

33:                                               ; preds = %28, %24
  %34 = load i32, i32* %2, align 4
  %35 = call i64 @DECL_EXTERNAL(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %2, align 4
  %39 = call i64 @TREE_PUBLIC(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %2, align 4
  %43 = call i64 @TREE_READONLY(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i32, i32* %2, align 4
  %47 = call i64 @DECL_INITIAL(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* %2, align 4
  %51 = call i64 @DECL_INITIAL(i32 %50)
  %52 = call i64 @is_gimple_min_invariant(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %59

55:                                               ; preds = %49, %45, %41
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @FULL_ESCAPE, align 4
  %58 = call i32 @mark_interesting_type(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %54
  br label %60

60:                                               ; preds = %9, %15, %23, %32, %59, %37
  ret void
}

declare dso_local i32 @get_canon_type(i32, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @lookup_attribute(i8*, i32) #1

declare dso_local i32 @DECL_ATTRIBUTES(i32) #1

declare dso_local i32 @mark_interesting_type(i32, i32) #1

declare dso_local i64 @TREE_THIS_VOLATILE(i32) #1

declare dso_local i32 @TREE_STATIC(i32) #1

declare dso_local i64 @DECL_EXTERNAL(i32) #1

declare dso_local i64 @TREE_PUBLIC(i32) #1

declare dso_local i64 @TREE_READONLY(i32) #1

declare dso_local i64 @DECL_INITIAL(i32) #1

declare dso_local i64 @is_gimple_min_invariant(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
