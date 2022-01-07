; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_HwRateToMRate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_HwRateToMRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MGN_1M = common dso_local global i32 0, align 4
@MGN_2M = common dso_local global i32 0, align 4
@MGN_5_5M = common dso_local global i32 0, align 4
@MGN_11M = common dso_local global i32 0, align 4
@MGN_6M = common dso_local global i32 0, align 4
@MGN_9M = common dso_local global i32 0, align 4
@MGN_12M = common dso_local global i32 0, align 4
@MGN_18M = common dso_local global i32 0, align 4
@MGN_24M = common dso_local global i32 0, align 4
@MGN_36M = common dso_local global i32 0, align 4
@MGN_48M = common dso_local global i32 0, align 4
@MGN_54M = common dso_local global i32 0, align 4
@COMP_RECV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"HwRateToMRate90(): Non supported Rate [%x], bIsHT = %d!!!\0A\00", align 1
@MGN_MCS0 = common dso_local global i32 0, align 4
@MGN_MCS1 = common dso_local global i32 0, align 4
@MGN_MCS2 = common dso_local global i32 0, align 4
@MGN_MCS3 = common dso_local global i32 0, align 4
@MGN_MCS4 = common dso_local global i32 0, align 4
@MGN_MCS5 = common dso_local global i32 0, align 4
@MGN_MCS6 = common dso_local global i32 0, align 4
@MGN_MCS7 = common dso_local global i32 0, align 4
@MGN_MCS8 = common dso_local global i32 0, align 4
@MGN_MCS9 = common dso_local global i32 0, align 4
@MGN_MCS10 = common dso_local global i32 0, align 4
@MGN_MCS11 = common dso_local global i32 0, align 4
@MGN_MCS12 = common dso_local global i32 0, align 4
@MGN_MCS13 = common dso_local global i32 0, align 4
@MGN_MCS14 = common dso_local global i32 0, align 4
@MGN_MCS15 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"HwRateToMRate92S(): Non supported Rate [%x], bIsHT = %d!!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8192SU_HwRateToMRate(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %87

10:                                               ; preds = %3
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %45, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %39 [
    i32 153, label %15
    i32 151, label %17
    i32 147, label %19
    i32 156, label %21
    i32 146, label %23
    i32 145, label %25
    i32 155, label %27
    i32 154, label %29
    i32 152, label %31
    i32 150, label %33
    i32 149, label %35
    i32 148, label %37
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @MGN_1M, align 4
  store i32 %16, i32* %7, align 4
  br label %44

17:                                               ; preds = %13
  %18 = load i32, i32* @MGN_2M, align 4
  store i32 %18, i32* %7, align 4
  br label %44

19:                                               ; preds = %13
  %20 = load i32, i32* @MGN_5_5M, align 4
  store i32 %20, i32* %7, align 4
  br label %44

21:                                               ; preds = %13
  %22 = load i32, i32* @MGN_11M, align 4
  store i32 %22, i32* %7, align 4
  br label %44

23:                                               ; preds = %13
  %24 = load i32, i32* @MGN_6M, align 4
  store i32 %24, i32* %7, align 4
  br label %44

25:                                               ; preds = %13
  %26 = load i32, i32* @MGN_9M, align 4
  store i32 %26, i32* %7, align 4
  br label %44

27:                                               ; preds = %13
  %28 = load i32, i32* @MGN_12M, align 4
  store i32 %28, i32* %7, align 4
  br label %44

29:                                               ; preds = %13
  %30 = load i32, i32* @MGN_18M, align 4
  store i32 %30, i32* %7, align 4
  br label %44

31:                                               ; preds = %13
  %32 = load i32, i32* @MGN_24M, align 4
  store i32 %32, i32* %7, align 4
  br label %44

33:                                               ; preds = %13
  %34 = load i32, i32* @MGN_36M, align 4
  store i32 %34, i32* %7, align 4
  br label %44

35:                                               ; preds = %13
  %36 = load i32, i32* @MGN_48M, align 4
  store i32 %36, i32* %7, align 4
  br label %44

37:                                               ; preds = %13
  %38 = load i32, i32* @MGN_54M, align 4
  store i32 %38, i32* %7, align 4
  br label %44

39:                                               ; preds = %13
  %40 = load i32, i32* @COMP_RECV, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @RT_TRACE(i32 %40, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15
  br label %86

45:                                               ; preds = %10
  %46 = load i32, i32* %5, align 4
  switch i32 %46, label %80 [
    i32 144, label %47
    i32 143, label %49
    i32 136, label %51
    i32 135, label %53
    i32 133, label %55
    i32 132, label %57
    i32 131, label %59
    i32 130, label %61
    i32 129, label %63
    i32 128, label %65
    i32 142, label %67
    i32 141, label %69
    i32 140, label %71
    i32 139, label %73
    i32 138, label %75
    i32 137, label %77
    i32 134, label %79
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* @MGN_MCS0, align 4
  store i32 %48, i32* %7, align 4
  br label %85

49:                                               ; preds = %45
  %50 = load i32, i32* @MGN_MCS1, align 4
  store i32 %50, i32* %7, align 4
  br label %85

51:                                               ; preds = %45
  %52 = load i32, i32* @MGN_MCS2, align 4
  store i32 %52, i32* %7, align 4
  br label %85

53:                                               ; preds = %45
  %54 = load i32, i32* @MGN_MCS3, align 4
  store i32 %54, i32* %7, align 4
  br label %85

55:                                               ; preds = %45
  %56 = load i32, i32* @MGN_MCS4, align 4
  store i32 %56, i32* %7, align 4
  br label %85

57:                                               ; preds = %45
  %58 = load i32, i32* @MGN_MCS5, align 4
  store i32 %58, i32* %7, align 4
  br label %85

59:                                               ; preds = %45
  %60 = load i32, i32* @MGN_MCS6, align 4
  store i32 %60, i32* %7, align 4
  br label %85

61:                                               ; preds = %45
  %62 = load i32, i32* @MGN_MCS7, align 4
  store i32 %62, i32* %7, align 4
  br label %85

63:                                               ; preds = %45
  %64 = load i32, i32* @MGN_MCS8, align 4
  store i32 %64, i32* %7, align 4
  br label %85

65:                                               ; preds = %45
  %66 = load i32, i32* @MGN_MCS9, align 4
  store i32 %66, i32* %7, align 4
  br label %85

67:                                               ; preds = %45
  %68 = load i32, i32* @MGN_MCS10, align 4
  store i32 %68, i32* %7, align 4
  br label %85

69:                                               ; preds = %45
  %70 = load i32, i32* @MGN_MCS11, align 4
  store i32 %70, i32* %7, align 4
  br label %85

71:                                               ; preds = %45
  %72 = load i32, i32* @MGN_MCS12, align 4
  store i32 %72, i32* %7, align 4
  br label %85

73:                                               ; preds = %45
  %74 = load i32, i32* @MGN_MCS13, align 4
  store i32 %74, i32* %7, align 4
  br label %85

75:                                               ; preds = %45
  %76 = load i32, i32* @MGN_MCS14, align 4
  store i32 %76, i32* %7, align 4
  br label %85

77:                                               ; preds = %45
  %78 = load i32, i32* @MGN_MCS15, align 4
  store i32 %78, i32* %7, align 4
  br label %85

79:                                               ; preds = %45
  store i32 160, i32* %7, align 4
  br label %85

80:                                               ; preds = %45
  %81 = load i32, i32* @COMP_RECV, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @RT_TRACE(i32 %81, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %79, %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47
  br label %86

86:                                               ; preds = %85, %44
  br label %152

87:                                               ; preds = %3
  %88 = load i32, i32* %5, align 4
  switch i32 %88, label %146 [
    i32 153, label %89
    i32 151, label %91
    i32 147, label %93
    i32 156, label %95
    i32 146, label %97
    i32 145, label %99
    i32 155, label %101
    i32 154, label %103
    i32 152, label %105
    i32 150, label %107
    i32 149, label %109
    i32 148, label %111
    i32 144, label %113
    i32 143, label %115
    i32 136, label %117
    i32 135, label %119
    i32 133, label %121
    i32 132, label %123
    i32 131, label %125
    i32 130, label %127
    i32 129, label %129
    i32 128, label %131
    i32 142, label %133
    i32 141, label %135
    i32 140, label %137
    i32 139, label %139
    i32 138, label %141
    i32 137, label %143
    i32 134, label %145
  ]

89:                                               ; preds = %87
  %90 = load i32, i32* @MGN_1M, align 4
  store i32 %90, i32* %7, align 4
  br label %151

91:                                               ; preds = %87
  %92 = load i32, i32* @MGN_2M, align 4
  store i32 %92, i32* %7, align 4
  br label %151

93:                                               ; preds = %87
  %94 = load i32, i32* @MGN_5_5M, align 4
  store i32 %94, i32* %7, align 4
  br label %151

95:                                               ; preds = %87
  %96 = load i32, i32* @MGN_11M, align 4
  store i32 %96, i32* %7, align 4
  br label %151

97:                                               ; preds = %87
  %98 = load i32, i32* @MGN_6M, align 4
  store i32 %98, i32* %7, align 4
  br label %151

99:                                               ; preds = %87
  %100 = load i32, i32* @MGN_9M, align 4
  store i32 %100, i32* %7, align 4
  br label %151

101:                                              ; preds = %87
  %102 = load i32, i32* @MGN_12M, align 4
  store i32 %102, i32* %7, align 4
  br label %151

103:                                              ; preds = %87
  %104 = load i32, i32* @MGN_18M, align 4
  store i32 %104, i32* %7, align 4
  br label %151

105:                                              ; preds = %87
  %106 = load i32, i32* @MGN_24M, align 4
  store i32 %106, i32* %7, align 4
  br label %151

107:                                              ; preds = %87
  %108 = load i32, i32* @MGN_36M, align 4
  store i32 %108, i32* %7, align 4
  br label %151

109:                                              ; preds = %87
  %110 = load i32, i32* @MGN_48M, align 4
  store i32 %110, i32* %7, align 4
  br label %151

111:                                              ; preds = %87
  %112 = load i32, i32* @MGN_54M, align 4
  store i32 %112, i32* %7, align 4
  br label %151

113:                                              ; preds = %87
  %114 = load i32, i32* @MGN_MCS0, align 4
  store i32 %114, i32* %7, align 4
  br label %151

115:                                              ; preds = %87
  %116 = load i32, i32* @MGN_MCS1, align 4
  store i32 %116, i32* %7, align 4
  br label %151

117:                                              ; preds = %87
  %118 = load i32, i32* @MGN_MCS2, align 4
  store i32 %118, i32* %7, align 4
  br label %151

119:                                              ; preds = %87
  %120 = load i32, i32* @MGN_MCS3, align 4
  store i32 %120, i32* %7, align 4
  br label %151

121:                                              ; preds = %87
  %122 = load i32, i32* @MGN_MCS4, align 4
  store i32 %122, i32* %7, align 4
  br label %151

123:                                              ; preds = %87
  %124 = load i32, i32* @MGN_MCS5, align 4
  store i32 %124, i32* %7, align 4
  br label %151

125:                                              ; preds = %87
  %126 = load i32, i32* @MGN_MCS6, align 4
  store i32 %126, i32* %7, align 4
  br label %151

127:                                              ; preds = %87
  %128 = load i32, i32* @MGN_MCS7, align 4
  store i32 %128, i32* %7, align 4
  br label %151

129:                                              ; preds = %87
  %130 = load i32, i32* @MGN_MCS8, align 4
  store i32 %130, i32* %7, align 4
  br label %151

131:                                              ; preds = %87
  %132 = load i32, i32* @MGN_MCS9, align 4
  store i32 %132, i32* %7, align 4
  br label %151

133:                                              ; preds = %87
  %134 = load i32, i32* @MGN_MCS10, align 4
  store i32 %134, i32* %7, align 4
  br label %151

135:                                              ; preds = %87
  %136 = load i32, i32* @MGN_MCS11, align 4
  store i32 %136, i32* %7, align 4
  br label %151

137:                                              ; preds = %87
  %138 = load i32, i32* @MGN_MCS12, align 4
  store i32 %138, i32* %7, align 4
  br label %151

139:                                              ; preds = %87
  %140 = load i32, i32* @MGN_MCS13, align 4
  store i32 %140, i32* %7, align 4
  br label %151

141:                                              ; preds = %87
  %142 = load i32, i32* @MGN_MCS14, align 4
  store i32 %142, i32* %7, align 4
  br label %151

143:                                              ; preds = %87
  %144 = load i32, i32* @MGN_MCS15, align 4
  store i32 %144, i32* %7, align 4
  br label %151

145:                                              ; preds = %87
  store i32 160, i32* %7, align 4
  br label %151

146:                                              ; preds = %87
  %147 = load i32, i32* @COMP_RECV, align 4
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %4, align 4
  %150 = call i32 @RT_TRACE(i32 %147, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %146, %145, %143, %141, %139, %137, %135, %133, %131, %129, %127, %125, %123, %121, %119, %117, %115, %113, %111, %109, %107, %105, %103, %101, %99, %97, %95, %93, %91, %89
  br label %152

152:                                              ; preds = %151, %86
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local i32 @RT_TRACE(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
