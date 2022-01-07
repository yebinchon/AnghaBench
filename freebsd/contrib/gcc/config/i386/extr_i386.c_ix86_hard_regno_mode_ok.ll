; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_hard_regno_mode_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_hard_regno_mode_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODE_CC = common dso_local global i64 0, align 8
@MODE_RANDOM = common dso_local global i64 0, align 8
@MODE_PARTIAL_INT = common dso_local global i64 0, align 8
@QImode = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i64 0, align 8
@TARGET_PARTIAL_REG_STALL = common dso_local global i32 0, align 4
@reload_in_progress = common dso_local global i64 0, align 8
@reload_completed = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_hard_regno_mode_ok(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @CC_REGNO_P(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @GET_MODE_CLASS(i32 %10)
  %12 = load i64, i64* @MODE_CC, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %3, align 4
  br label %123

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @GET_MODE_CLASS(i32 %16)
  %18 = load i64, i64* @MODE_CC, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @GET_MODE_CLASS(i32 %21)
  %23 = load i64, i64* @MODE_RANDOM, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @GET_MODE_CLASS(i32 %26)
  %28 = load i64, i64* @MODE_PARTIAL_INT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %20, %15
  store i32 0, i32* %3, align 4
  br label %123

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @FP_REGNO_P(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @VALID_FP_MODE_P(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %123

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @SSE_REGNO_P(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @VALID_SSE_REG_MODE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @VALID_SSE2_REG_MODE(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @VALID_MMX_REG_MODE(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @VALID_MMX_REG_MODE_3DNOW(i32 %55)
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %54, %50, %46, %42
  %59 = phi i1 [ true, %50 ], [ true, %46 ], [ true, %42 ], [ %57, %54 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %3, align 4
  br label %123

61:                                               ; preds = %38
  %62 = load i32, i32* %4, align 4
  %63 = call i64 @MMX_REGNO_P(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = call i64 @VALID_MMX_REG_MODE(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @VALID_MMX_REG_MODE_3DNOW(i32 %70)
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i1 [ true, %65 ], [ %72, %69 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %3, align 4
  br label %123

76:                                               ; preds = %61
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @QImode, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %76
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %81, 4
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i64, i64* @TARGET_64BIT, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83, %80
  store i32 1, i32* %3, align 4
  br label %123

87:                                               ; preds = %83
  %88 = load i32, i32* @TARGET_PARTIAL_REG_STALL, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  store i32 1, i32* %3, align 4
  br label %123

91:                                               ; preds = %87
  %92 = load i64, i64* @reload_in_progress, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i64, i64* @reload_completed, align 8
  %96 = icmp ne i64 %95, 0
  br label %97

97:                                               ; preds = %94, %91
  %98 = phi i1 [ true, %91 ], [ %96, %94 ]
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %3, align 4
  br label %123

100:                                              ; preds = %76
  %101 = load i32, i32* %5, align 4
  %102 = call i64 @VALID_INT_MODE_P(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 1, i32* %3, align 4
  br label %123

105:                                              ; preds = %100
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @VALID_FP_MODE_P(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i32 1, i32* %3, align 4
  br label %123

110:                                              ; preds = %105
  %111 = load i32, i32* %5, align 4
  %112 = call i64 @VALID_MMX_REG_MODE_3DNOW(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* %5, align 4
  %116 = call i64 @VALID_MMX_REG_MODE(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114, %110
  store i32 1, i32* %3, align 4
  br label %123

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %118, %109, %104, %97, %90, %86, %73, %58, %35, %30, %9
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i64 @CC_REGNO_P(i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i64 @FP_REGNO_P(i32) #1

declare dso_local i32 @VALID_FP_MODE_P(i32) #1

declare dso_local i64 @SSE_REGNO_P(i32) #1

declare dso_local i64 @VALID_SSE_REG_MODE(i32) #1

declare dso_local i64 @VALID_SSE2_REG_MODE(i32) #1

declare dso_local i64 @VALID_MMX_REG_MODE(i32) #1

declare dso_local i64 @VALID_MMX_REG_MODE_3DNOW(i32) #1

declare dso_local i64 @MMX_REGNO_P(i32) #1

declare dso_local i64 @VALID_INT_MODE_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
