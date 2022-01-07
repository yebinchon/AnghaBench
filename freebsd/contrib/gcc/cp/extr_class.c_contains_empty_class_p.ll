; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_contains_empty_class_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_contains_empty_class_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIELD_DECL = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @contains_empty_class_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @contains_empty_class_p(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @is_empty_class(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %72

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @CLASS_TYPE_P(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %61

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @TYPE_BINFO(i64 %17)
  store i64 %18, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %32, %16
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @BINFO_BASE_ITERATE(i64 %20, i32 %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @BINFO_TYPE(i64 %26)
  %28 = call i32 @contains_empty_class_p(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %72

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %19

35:                                               ; preds = %19
  %36 = load i64, i64* %3, align 8
  %37 = call i64 @TYPE_FIELDS(i64 %36)
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %57, %35
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  %42 = load i64, i64* %4, align 8
  %43 = call i64 @TREE_CODE(i64 %42)
  %44 = load i64, i64* @FIELD_DECL, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @DECL_ARTIFICIAL(i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @TREE_TYPE(i64 %51)
  %53 = call i64 @is_empty_class(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 1, i32* %2, align 4
  br label %72

56:                                               ; preds = %50, %46, %41
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %4, align 8
  %59 = call i64 @TREE_CHAIN(i64 %58)
  store i64 %59, i64* %4, align 8
  br label %38

60:                                               ; preds = %38
  br label %71

61:                                               ; preds = %12
  %62 = load i64, i64* %3, align 8
  %63 = call i64 @TREE_CODE(i64 %62)
  %64 = load i64, i64* @ARRAY_TYPE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i64, i64* %3, align 8
  %68 = call i64 @TREE_TYPE(i64 %67)
  %69 = call i32 @contains_empty_class_p(i64 %68)
  store i32 %69, i32* %2, align 4
  br label %72

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %60
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %66, %55, %30, %11
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @is_empty_class(i64) #1

declare dso_local i64 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @TYPE_BINFO(i64) #1

declare dso_local i64 @BINFO_BASE_ITERATE(i64, i32, i64) #1

declare dso_local i64 @BINFO_TYPE(i64) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @DECL_ARTIFICIAL(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
