; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_tree_code_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_tree_code_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32)*, i64 }

@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tree_code_size(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @TREE_CODE_CLASS(i32 %4)
  switch i32 %5, label %56 [
    i32 134, label %6
    i32 129, label %19
    i32 131, label %20
    i32 132, label %20
    i32 130, label %20
    i32 136, label %20
    i32 128, label %20
    i32 137, label %20
    i32 135, label %27
    i32 133, label %39
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %18 [
    i32 160, label %8
    i32 153, label %9
    i32 139, label %10
    i32 156, label %11
    i32 149, label %12
    i32 162, label %13
    i32 141, label %14
    i32 159, label %15
    i32 155, label %16
    i32 144, label %16
    i32 145, label %17
  ]

8:                                                ; preds = %6
  store i64 4, i64* %2, align 8
  br label %58

9:                                                ; preds = %6
  store i64 4, i64* %2, align 8
  br label %58

10:                                               ; preds = %6
  store i64 4, i64* %2, align 8
  br label %58

11:                                               ; preds = %6
  store i64 4, i64* %2, align 8
  br label %58

12:                                               ; preds = %6
  store i64 4, i64* %2, align 8
  br label %58

13:                                               ; preds = %6
  store i64 4, i64* %2, align 8
  br label %58

14:                                               ; preds = %6
  store i64 4, i64* %2, align 8
  br label %58

15:                                               ; preds = %6
  store i64 4, i64* %2, align 8
  br label %58

16:                                               ; preds = %6, %6
  store i64 4, i64* %2, align 8
  br label %58

17:                                               ; preds = %6
  store i64 4, i64* %2, align 8
  br label %58

18:                                               ; preds = %6
  store i64 4, i64* %2, align 8
  br label %58

19:                                               ; preds = %1
  store i64 4, i64* %2, align 8
  br label %58

20:                                               ; preds = %1, %1, %1, %1, %1, %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @TREE_CODE_LENGTH(i32 %21)
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = add i64 4, %25
  store i64 %26, i64* %2, align 8
  br label %58

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  switch i32 %28, label %35 [
    i32 157, label %29
    i32 150, label %30
    i32 164, label %31
    i32 138, label %32
    i32 146, label %33
  ]

29:                                               ; preds = %27
  store i64 4, i64* %2, align 8
  br label %58

30:                                               ; preds = %27
  store i64 4, i64* %2, align 8
  br label %58

31:                                               ; preds = %27
  store i64 4, i64* %2, align 8
  br label %58

32:                                               ; preds = %27
  store i64 4, i64* %2, align 8
  br label %58

33:                                               ; preds = %27
  %34 = call i32 (...) @gcc_unreachable()
  br label %35

35:                                               ; preds = %27, %33
  %36 = load i64 (i32)*, i64 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i64 %36(i32 %37)
  store i64 %38, i64* %2, align 8
  br label %58

39:                                               ; preds = %1
  %40 = load i32, i32* %3, align 4
  switch i32 %40, label %52 [
    i32 158, label %41
    i32 143, label %43
    i32 161, label %44
    i32 151, label %44
    i32 142, label %45
    i32 154, label %45
    i32 152, label %45
    i32 148, label %47
    i32 147, label %48
    i32 165, label %49
    i32 140, label %50
    i32 163, label %51
  ]

41:                                               ; preds = %39
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 1), align 8
  store i64 %42, i64* %2, align 8
  br label %58

43:                                               ; preds = %39
  store i64 4, i64* %2, align 8
  br label %58

44:                                               ; preds = %39, %39
  store i64 4, i64* %2, align 8
  br label %58

45:                                               ; preds = %39, %39, %39
  %46 = call i32 (...) @gcc_unreachable()
  br label %47

47:                                               ; preds = %39, %45
  store i64 4, i64* %2, align 8
  br label %58

48:                                               ; preds = %39
  store i64 4, i64* %2, align 8
  br label %58

49:                                               ; preds = %39
  store i64 4, i64* %2, align 8
  br label %58

50:                                               ; preds = %39
  store i64 4, i64* %2, align 8
  br label %58

51:                                               ; preds = %39
  store i64 4, i64* %2, align 8
  br label %58

52:                                               ; preds = %39
  %53 = load i64 (i32)*, i64 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i64 %53(i32 %54)
  store i64 %55, i64* %2, align 8
  br label %58

56:                                               ; preds = %1
  %57 = call i32 (...) @gcc_unreachable()
  br label %58

58:                                               ; preds = %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %29, %30, %31, %32, %35, %41, %43, %44, %47, %48, %49, %50, %51, %52, %56
  %59 = load i64, i64* %2, align 8
  ret i64 %59
}

declare dso_local i32 @TREE_CODE_CLASS(i32) #1

declare dso_local i32 @TREE_CODE_LENGTH(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
