; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_remove_hidden_names.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_remove_hidden_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_DECL = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@OVERLOAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @remove_hidden_names(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  store i64 %9, i64* %2, align 8
  br label %70

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @TREE_CODE(i64 %11)
  %13 = load i64, i64* @FUNCTION_DECL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @hidden_name_p(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i64, i64* @NULL_TREE, align 8
  store i64 %20, i64* %3, align 8
  br label %68

21:                                               ; preds = %15, %10
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @TREE_CODE(i64 %22)
  %24 = load i64, i64* @OVERLOAD, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %67

26:                                               ; preds = %21
  %27 = load i64, i64* %3, align 8
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %38, %26
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @OVL_CURRENT(i64 %32)
  %34 = call i64 @hidden_name_p(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %41

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @OVL_NEXT(i64 %39)
  store i64 %40, i64* %4, align 8
  br label %28

41:                                               ; preds = %36, %28
  %42 = load i64, i64* %4, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = load i64, i64* @NULL_TREE, align 8
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %3, align 8
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %61, %44
  %48 = load i64, i64* %4, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @OVL_CURRENT(i64 %51)
  %53 = call i64 @hidden_name_p(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i64, i64* %4, align 8
  %57 = call i64 @OVL_CURRENT(i64 %56)
  %58 = load i64, i64* %5, align 8
  %59 = call i64 @build_overload(i64 %57, i64 %58)
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %55, %50
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %4, align 8
  %63 = call i64 @OVL_NEXT(i64 %62)
  store i64 %63, i64* %4, align 8
  br label %47

64:                                               ; preds = %47
  %65 = load i64, i64* %5, align 8
  store i64 %65, i64* %3, align 8
  br label %66

66:                                               ; preds = %64, %41
  br label %67

67:                                               ; preds = %66, %21
  br label %68

68:                                               ; preds = %67, %19
  %69 = load i64, i64* %3, align 8
  store i64 %69, i64* %2, align 8
  br label %70

70:                                               ; preds = %68, %8
  %71 = load i64, i64* %2, align 8
  ret i64 %71
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @hidden_name_p(i64) #1

declare dso_local i64 @OVL_CURRENT(i64) #1

declare dso_local i64 @OVL_NEXT(i64) #1

declare dso_local i64 @build_overload(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
