; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_function_arg_integer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_function_arg_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODE_INT = common dso_local global i64 0, align 8
@TARGET_SOFT_FLOAT = common dso_local global i64 0, align 8
@OFFSET_TYPE = common dso_local global i64 0, align 8
@REAL_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @s390_function_arg_integer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_function_arg_integer(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @s390_function_arg_size(i32 %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 8
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @GET_MODE_CLASS(i32 %17)
  %19 = load i64, i64* @MODE_INT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = load i64, i64* @TARGET_SOFT_FLOAT, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @SCALAR_FLOAT_MODE_P(i32 %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br label %30

30:                                               ; preds = %28, %16
  %31 = phi i1 [ true, %16 ], [ %29, %28 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %70

33:                                               ; preds = %13
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @INTEGRAL_TYPE_P(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @POINTER_TYPE_P(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @TREE_CODE(i32 %42)
  %44 = load i64, i64* @OFFSET_TYPE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load i64, i64* @TARGET_SOFT_FLOAT, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @TREE_CODE(i32 %50)
  %52 = load i64, i64* @REAL_TYPE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %41, %37, %33
  store i32 1, i32* %3, align 4
  br label %70

55:                                               ; preds = %49, %46
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @AGGREGATE_TYPE_P(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @exact_log2(i32 %60)
  %62 = icmp sge i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @s390_function_arg_float(i32 %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %70

69:                                               ; preds = %63, %59, %55
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %68, %54, %30, %12
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @s390_function_arg_size(i32, i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i64 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i64 @POINTER_TYPE_P(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @AGGREGATE_TYPE_P(i32) #1

declare dso_local i64 @exact_log2(i32) #1

declare dso_local i32 @s390_function_arg_float(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
