; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_function_arg_boundary.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_function_arg_boundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_ABI = common dso_local global i64 0, align 8
@ABI_V4 = common dso_local global i64 0, align 8
@TARGET_HARD_FLOAT = common dso_local global i64 0, align 8
@TARGET_FPRS = common dso_local global i64 0, align 8
@TFmode = common dso_local global i32 0, align 4
@VECTOR_TYPE = common dso_local global i64 0, align 8
@rs6000_darwin64_abi = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i32 0, align 4
@PARM_BOUNDARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @function_arg_boundary(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* @DEFAULT_ABI, align 8
  %7 = load i64, i64* @ABI_V4, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @GET_MODE_SIZE(i32 %10)
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i64, i64* @TARGET_FPRS, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @TFmode, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %9
  store i32 64, i32* %3, align 4
  br label %79

24:                                               ; preds = %19, %16, %13, %2
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @SPE_VECTOR_MODE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @TREE_CODE(i64 %32)
  %34 = load i64, i64* @VECTOR_TYPE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @int_size_in_bytes(i64 %37)
  %39 = icmp sge i32 %38, 8
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @int_size_in_bytes(i64 %41)
  %43 = icmp slt i32 %42, 16
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %24
  store i32 64, i32* %3, align 4
  br label %79

45:                                               ; preds = %40, %36, %31, %28
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @ALTIVEC_VECTOR_MODE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %5, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @TREE_CODE(i64 %53)
  %55 = load i64, i64* @VECTOR_TYPE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @int_size_in_bytes(i64 %58)
  %60 = icmp sge i32 %59, 16
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %45
  store i32 128, i32* %3, align 4
  br label %79

62:                                               ; preds = %57, %52, %49
  %63 = load i64, i64* @rs6000_darwin64_abi, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @BLKmode, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load i64, i64* %5, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @TYPE_ALIGN(i64 %73)
  %75 = icmp sgt i32 %74, 64
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 128, i32* %3, align 4
  br label %79

77:                                               ; preds = %72, %69, %65, %62
  %78 = load i32, i32* @PARM_BOUNDARY, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %76, %61, %44, %23
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @SPE_VECTOR_MODE(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @int_size_in_bytes(i64) #1

declare dso_local i64 @ALTIVEC_VECTOR_MODE(i32) #1

declare dso_local i32 @TYPE_ALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
