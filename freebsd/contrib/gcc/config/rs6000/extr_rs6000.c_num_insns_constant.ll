; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_num_insns_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_num_insns_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SFmode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@WORDS_BIG_ENDIAN = common dso_local global i32 0, align 4
@TARGET_32BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @num_insns_constant(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i64], align 16
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @GET_CODE(i32 %12)
  switch i32 %13, label %110 [
    i32 128, label %14
    i32 129, label %18
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @INTVAL(i32 %15)
  %17 = call i32 @num_insns_constant_wide(i32 %16)
  store i32 %17, i32* %3, align 4
  br label %112

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SFmode, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32 %23, i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @REAL_VALUE_TO_TARGET_SINGLE(i32 %26, i64 %27)
  %29 = load i64, i64* %8, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @num_insns_constant_wide(i32 %30)
  store i32 %31, i32* %3, align 4
  br label %112

32:                                               ; preds = %18
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @VOIDmode, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @DImode, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @CONST_DOUBLE_HIGH(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @CONST_DOUBLE_LOW(i32 %43)
  store i32 %44, i32* %6, align 4
  br label %66

45:                                               ; preds = %36
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32 %46, i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %51 = call i32 @REAL_VALUE_TO_TARGET_DOUBLE(i32 %49, i64* %50)
  %52 = load i32, i32* @WORDS_BIG_ENDIAN, align 4
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* @WORDS_BIG_ENDIAN, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %45, %40
  %67 = load i32, i32* @TARGET_32BIT, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @num_insns_constant_wide(i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @num_insns_constant_wide(i32 %72)
  %74 = add nsw i32 %71, %73
  store i32 %74, i32* %3, align 4
  br label %112

75:                                               ; preds = %66
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84, %78
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @num_insns_constant_wide(i32 %88)
  store i32 %89, i32* %3, align 4
  br label %112

90:                                               ; preds = %84, %81
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @mask64_operand(i32 %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 2, i32* %3, align 4
  br label %112

96:                                               ; preds = %90
  %97 = load i32, i32* %6, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @num_insns_constant_wide(i32 %100)
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %3, align 4
  br label %112

103:                                              ; preds = %96
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @num_insns_constant_wide(i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @num_insns_constant_wide(i32 %106)
  %108 = add nsw i32 %105, %107
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %3, align 4
  br label %112

110:                                              ; preds = %2
  %111 = call i32 (...) @gcc_unreachable()
  br label %112

112:                                              ; preds = %14, %22, %69, %87, %95, %99, %103, %110
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @num_insns_constant_wide(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32, i32) #1

declare dso_local i32 @REAL_VALUE_TO_TARGET_SINGLE(i32, i64) #1

declare dso_local i32 @CONST_DOUBLE_HIGH(i32) #1

declare dso_local i32 @CONST_DOUBLE_LOW(i32) #1

declare dso_local i32 @REAL_VALUE_TO_TARGET_DOUBLE(i32, i64*) #1

declare dso_local i32 @mask64_operand(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
