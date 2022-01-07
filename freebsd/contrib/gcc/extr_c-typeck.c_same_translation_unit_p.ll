; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_same_translation_unit_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_same_translation_unit_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRANSLATION_UNIT_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @same_translation_unit_p(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  br label %5

5:                                                ; preds = %30, %2
  %6 = load i64, i64* %3, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @TREE_CODE(i64 %9)
  %11 = load i64, i64* @TRANSLATION_UNIT_DECL, align 8
  %12 = icmp ne i64 %10, %11
  br label %13

13:                                               ; preds = %8, %5
  %14 = phi i1 [ false, %5 ], [ %12, %8 ]
  br i1 %14, label %15, label %31

15:                                               ; preds = %13
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @TREE_CODE(i64 %16)
  %18 = call i32 @TREE_CODE_CLASS(i64 %17)
  switch i32 %18, label %28 [
    i32 130, label %19
    i32 128, label %22
    i32 129, label %25
  ]

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @DECL_CONTEXT(i64 %20)
  store i64 %21, i64* %3, align 8
  br label %30

22:                                               ; preds = %15
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @TYPE_CONTEXT(i64 %23)
  store i64 %24, i64* %3, align 8
  br label %30

25:                                               ; preds = %15
  %26 = load i64, i64* %3, align 8
  %27 = call i64 @BLOCK_SUPERCONTEXT(i64 %26)
  store i64 %27, i64* %3, align 8
  br label %30

28:                                               ; preds = %15
  %29 = call i32 (...) @gcc_unreachable()
  br label %30

30:                                               ; preds = %28, %25, %22, %19
  br label %5

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %57, %31
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @TREE_CODE(i64 %36)
  %38 = load i64, i64* @TRANSLATION_UNIT_DECL, align 8
  %39 = icmp ne i64 %37, %38
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi i1 [ false, %32 ], [ %39, %35 ]
  br i1 %41, label %42, label %58

42:                                               ; preds = %40
  %43 = load i64, i64* %4, align 8
  %44 = call i64 @TREE_CODE(i64 %43)
  %45 = call i32 @TREE_CODE_CLASS(i64 %44)
  switch i32 %45, label %55 [
    i32 130, label %46
    i32 128, label %49
    i32 129, label %52
  ]

46:                                               ; preds = %42
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @DECL_CONTEXT(i64 %47)
  store i64 %48, i64* %4, align 8
  br label %57

49:                                               ; preds = %42
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @TYPE_CONTEXT(i64 %50)
  store i64 %51, i64* %4, align 8
  br label %57

52:                                               ; preds = %42
  %53 = load i64, i64* %4, align 8
  %54 = call i64 @BLOCK_SUPERCONTEXT(i64 %53)
  store i64 %54, i64* %4, align 8
  br label %57

55:                                               ; preds = %42
  %56 = call i32 (...) @gcc_unreachable()
  br label %57

57:                                               ; preds = %55, %52, %49, %46
  br label %32

58:                                               ; preds = %40
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* %4, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  ret i32 %62
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @TREE_CODE_CLASS(i64) #1

declare dso_local i64 @DECL_CONTEXT(i64) #1

declare dso_local i64 @TYPE_CONTEXT(i64) #1

declare dso_local i64 @BLOCK_SUPERCONTEXT(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
