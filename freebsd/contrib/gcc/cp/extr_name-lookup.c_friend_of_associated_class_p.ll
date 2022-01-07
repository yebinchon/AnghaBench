; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_friend_of_associated_class_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_friend_of_associated_class_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNION_TYPE = common dso_local global i64 0, align 8
@ENUMERAL_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @friend_of_associated_class_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @friend_of_associated_class_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @TYPE_P(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  store i64 %14, i64* %6, align 8
  br label %24

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @type_unknown_p(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %91

20:                                               ; preds = %15
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @TREE_TYPE(i64 %21)
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %23, %13
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @CLASS_TYPE_P(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %24
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @is_friend(i64 %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %91

34:                                               ; preds = %28
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @TYPE_BINFO(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @TYPE_BINFO(i64 %39)
  store i64 %40, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %55, %38
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @BINFO_BASE_ITERATE(i64 %42, i32 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load i64, i64* %8, align 8
  %49 = call i64 @BINFO_TYPE(i64 %48)
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @is_friend(i64 %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 1, i32* %3, align 4
  br label %91

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %41

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58, %34
  br label %60

60:                                               ; preds = %59, %24
  %61 = load i64, i64* %6, align 8
  %62 = call i64 @CLASS_TYPE_P(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8
  %66 = call i64 @TREE_CODE(i64 %65)
  %67 = load i64, i64* @UNION_TYPE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i64, i64* %6, align 8
  %71 = call i64 @TREE_CODE(i64 %70)
  %72 = load i64, i64* @ENUMERAL_TYPE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %69, %64, %60
  %75 = load i64, i64* %6, align 8
  %76 = call i64 @TYPE_CONTEXT(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i64, i64* %6, align 8
  %80 = call i64 @TYPE_CONTEXT(i64 %79)
  %81 = call i64 @CLASS_TYPE_P(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i64, i64* %6, align 8
  %85 = call i64 @TYPE_CONTEXT(i64 %84)
  %86 = load i64, i64* %5, align 8
  %87 = call i64 @is_friend(i64 %85, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 1, i32* %3, align 4
  br label %91

90:                                               ; preds = %83, %78, %74, %69
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %89, %53, %33, %19
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i64 @type_unknown_p(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @is_friend(i64, i64) #1

declare dso_local i64 @TYPE_BINFO(i64) #1

declare dso_local i64 @BINFO_BASE_ITERATE(i64, i32, i64) #1

declare dso_local i64 @BINFO_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_CONTEXT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
