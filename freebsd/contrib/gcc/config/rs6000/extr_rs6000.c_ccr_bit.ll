; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_ccr_bit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_ccr_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG = common dso_local global i64 0, align 8
@CR0_REGNO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccr_bit(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @GET_CODE(i32 %11)
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @COMPARISON_P(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %115

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @XEXP(i32 %19, i32 0)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @GET_CODE(i32 %21)
  %23 = load i64, i64* @REG, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @REGNO(i32 %26)
  %28 = call i64 @CR_REGNO_P(i32 %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %18
  %31 = phi i1 [ false, %18 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @gcc_assert(i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @GET_MODE(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @REGNO(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @CR0_REGNO, align 4
  %40 = sub nsw i32 %38, %39
  %41 = mul nsw i32 4, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @validate_condition_mode(i32 %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %30
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 141
  br i1 %49, label %65, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 138
  br i1 %52, label %65, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 134
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 128
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, 137
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 133
  br label %65

65:                                               ; preds = %62, %59, %56, %53, %50, %47, %30
  %66 = phi i1 [ true, %59 ], [ true, %56 ], [ true, %53 ], [ true, %50 ], [ true, %47 ], [ true, %30 ], [ %64, %62 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @gcc_assert(i32 %67)
  %69 = load i32, i32* %6, align 4
  switch i32 %69, label %113 [
    i32 132, label %70
    i32 141, label %81
    i32 138, label %84
    i32 137, label %84
    i32 129, label %84
    i32 134, label %87
    i32 133, label %87
    i32 130, label %87
    i32 131, label %89
    i32 128, label %89
    i32 140, label %92
    i32 139, label %92
    i32 136, label %102
    i32 135, label %102
  ]

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 3
  br label %79

76:                                               ; preds = %70
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 2
  br label %79

79:                                               ; preds = %76, %73
  %80 = phi i32 [ %75, %73 ], [ %78, %76 ]
  store i32 %80, i32* %3, align 4
  br label %115

81:                                               ; preds = %65
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 2
  store i32 %83, i32* %3, align 4
  br label %115

84:                                               ; preds = %65, %65, %65
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %3, align 4
  br label %115

87:                                               ; preds = %65, %65, %65
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %3, align 4
  br label %115

89:                                               ; preds = %65, %65
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 3
  store i32 %91, i32* %3, align 4
  br label %115

92:                                               ; preds = %65, %65
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 3
  br label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %9, align 4
  br label %100

100:                                              ; preds = %98, %95
  %101 = phi i32 [ %97, %95 ], [ %99, %98 ]
  store i32 %101, i32* %3, align 4
  br label %115

102:                                              ; preds = %65, %65
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 3
  br label %111

108:                                              ; preds = %102
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  br label %111

111:                                              ; preds = %108, %105
  %112 = phi i32 [ %107, %105 ], [ %110, %108 ]
  store i32 %112, i32* %3, align 4
  br label %115

113:                                              ; preds = %65
  %114 = call i32 (...) @gcc_unreachable()
  br label %115

115:                                              ; preds = %17, %79, %81, %84, %87, %89, %100, %111, %113
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @COMPARISON_P(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @CR_REGNO_P(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @validate_condition_mode(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
