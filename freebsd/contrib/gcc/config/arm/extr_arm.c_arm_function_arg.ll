; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_function_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_function_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i32 }

@TARGET_IWMMXT_ABI = common dso_local global i64 0, align 8
@FIRST_IWMMXT_REGNUM = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@ARM_DOUBLEWORD_ALIGN = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@NUM_ARG_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_function_arg(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* @TARGET_IWMMXT_ABI, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @arm_vector_mode_supported_p(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  %25 = icmp sgt i64 %20, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %17
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp sle i32 %29, 9
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @FIRST_IWMMXT_REGNUM, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @gen_rtx_REG(i32 %32, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %100

39:                                               ; preds = %26
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* @NULL_RTX, align 4
  store i32 %42, i32* %5, align 4
  br label %100

43:                                               ; preds = %17, %13, %4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load i64, i64* @ARM_DOUBLEWORD_ALIGN, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @arm_needs_doubleword_align(i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %57, %52, %49, %43
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @VOIDmode, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @GEN_INT(i32 %69)
  store i32 %70, i32* %5, align 4
  br label %100

71:                                               ; preds = %62
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 1, i32* %10, align 4
  br label %81

77:                                               ; preds = %71
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @ARM_NUM_REGS2(i32 %78, i32 %79)
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %77, %76
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* @NUM_ARG_REGS, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %84, %81
  %93 = load i32, i32* @NULL_RTX, align 4
  store i32 %93, i32* %5, align 4
  br label %100

94:                                               ; preds = %84
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @gen_rtx_REG(i32 %95, i32 %98)
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %94, %92, %66, %39, %31
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i64 @arm_vector_mode_supported_p(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i64 @arm_needs_doubleword_align(i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @ARM_NUM_REGS2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
