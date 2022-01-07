; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_function_arg_float.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_function_arg_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_SOFT_FLOAT = common dso_local global i64 0, align 8
@SFmode = common dso_local global i32 0, align 4
@DFmode = common dso_local global i32 0, align 4
@SDmode = common dso_local global i32 0, align 4
@DDmode = common dso_local global i32 0, align 4
@RECORD_TYPE = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@FIELD_DECL = common dso_local global i64 0, align 8
@REAL_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @s390_function_arg_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_function_arg_float(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @s390_function_arg_size(i32 %9, i64 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 8
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %86

15:                                               ; preds = %2
  %16 = load i64, i64* @TARGET_SOFT_FLOAT, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %86

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @SFmode, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @DFmode, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @SDmode, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @DDmode, align 4
  %37 = icmp eq i32 %35, %36
  br label %38

38:                                               ; preds = %34, %30, %26, %22
  %39 = phi i1 [ true, %30 ], [ true, %26 ], [ true, %22 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %86

41:                                               ; preds = %19
  br label %42

42:                                               ; preds = %79, %41
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @TREE_CODE(i64 %43)
  %45 = load i64, i64* @RECORD_TYPE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %80

47:                                               ; preds = %42
  %48 = load i64, i64* @NULL_TREE, align 8
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @TYPE_FIELDS(i64 %49)
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %69, %47
  %52 = load i64, i64* %7, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load i64, i64* %7, align 8
  %56 = call i64 @TREE_CODE(i64 %55)
  %57 = load i64, i64* @FIELD_DECL, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %69

60:                                               ; preds = %54
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @NULL_TREE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i64, i64* %7, align 8
  %66 = call i64 @TREE_TYPE(i64 %65)
  store i64 %66, i64* %8, align 8
  br label %68

67:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %86

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68, %59
  %70 = load i64, i64* %7, align 8
  %71 = call i64 @TREE_CHAIN(i64 %70)
  store i64 %71, i64* %7, align 8
  br label %51

72:                                               ; preds = %51
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @NULL_TREE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %86

77:                                               ; preds = %72
  %78 = load i64, i64* %8, align 8
  store i64 %78, i64* %5, align 8
  br label %79

79:                                               ; preds = %77
  br label %42

80:                                               ; preds = %42
  %81 = load i64, i64* %5, align 8
  %82 = call i64 @TREE_CODE(i64 %81)
  %83 = load i64, i64* @REAL_TYPE, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %80, %76, %67, %38, %18, %14
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @s390_function_arg_size(i32, i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
