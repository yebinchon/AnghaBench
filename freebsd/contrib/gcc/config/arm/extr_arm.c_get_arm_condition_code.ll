; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_get_arm_condition_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_get_arm_condition_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODE_CC = common dso_local global i64 0, align 8
@ARM_NE = common dso_local global i32 0, align 4
@ARM_EQ = common dso_local global i32 0, align 4
@ARM_GE = common dso_local global i32 0, align 4
@ARM_GT = common dso_local global i32 0, align 4
@ARM_LE = common dso_local global i32 0, align 4
@ARM_LT = common dso_local global i32 0, align 4
@ARM_CS = common dso_local global i32 0, align 4
@ARM_HI = common dso_local global i32 0, align 4
@ARM_LS = common dso_local global i32 0, align 4
@ARM_CC = common dso_local global i32 0, align 4
@ARM_PL = common dso_local global i32 0, align 4
@ARM_MI = common dso_local global i32 0, align 4
@ARM_VC = common dso_local global i32 0, align 4
@ARM_VS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_arm_condition_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_arm_condition_code(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @XEXP(i32 %7, i32 0)
  %9 = call i32 @GET_MODE(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @GET_CODE(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @GET_MODE_CLASS(i32 %12)
  %14 = load i64, i64* @MODE_CC, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @XEXP(i32 %18, i32 0)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @XEXP(i32 %20, i32 1)
  %22 = call i32 @SELECT_CC_MODE(i32 %17, i32 %19, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %16, %1
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %182 [
    i32 151, label %25
    i32 160, label %27
    i32 158, label %29
    i32 156, label %31
    i32 154, label %33
    i32 152, label %35
    i32 159, label %37
    i32 157, label %39
    i32 155, label %41
    i32 153, label %43
    i32 150, label %62
    i32 147, label %75
    i32 149, label %84
    i32 163, label %93
    i32 162, label %93
    i32 148, label %123
    i32 161, label %148
    i32 146, label %157
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @ARM_NE, align 4
  store i32 %26, i32* %5, align 4
  br label %45

27:                                               ; preds = %23
  %28 = load i32, i32* @ARM_EQ, align 4
  store i32 %28, i32* %5, align 4
  br label %45

29:                                               ; preds = %23
  %30 = load i32, i32* @ARM_GE, align 4
  store i32 %30, i32* %5, align 4
  br label %45

31:                                               ; preds = %23
  %32 = load i32, i32* @ARM_GT, align 4
  store i32 %32, i32* %5, align 4
  br label %45

33:                                               ; preds = %23
  %34 = load i32, i32* @ARM_LE, align 4
  store i32 %34, i32* %5, align 4
  br label %45

35:                                               ; preds = %23
  %36 = load i32, i32* @ARM_LT, align 4
  store i32 %36, i32* %5, align 4
  br label %45

37:                                               ; preds = %23
  %38 = load i32, i32* @ARM_CS, align 4
  store i32 %38, i32* %5, align 4
  br label %45

39:                                               ; preds = %23
  %40 = load i32, i32* @ARM_HI, align 4
  store i32 %40, i32* %5, align 4
  br label %45

41:                                               ; preds = %23
  %42 = load i32, i32* @ARM_LS, align 4
  store i32 %42, i32* %5, align 4
  br label %45

43:                                               ; preds = %23
  %44 = load i32, i32* @ARM_CC, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %41, %39, %37, %35, %33, %31, %29, %27, %25
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 145
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 135
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i1 [ true, %45 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @gcc_assert(i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 145
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @ARM_INVERSE_CONDITION_CODE(i32 %58)
  store i32 %59, i32* %2, align 4
  br label %184

60:                                               ; preds = %51
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %184

62:                                               ; preds = %23
  %63 = load i32, i32* %6, align 4
  switch i32 %63, label %72 [
    i32 135, label %64
    i32 145, label %66
    i32 144, label %68
    i32 138, label %70
  ]

64:                                               ; preds = %62
  %65 = load i32, i32* @ARM_NE, align 4
  store i32 %65, i32* %2, align 4
  br label %184

66:                                               ; preds = %62
  %67 = load i32, i32* @ARM_EQ, align 4
  store i32 %67, i32* %2, align 4
  br label %184

68:                                               ; preds = %62
  %69 = load i32, i32* @ARM_PL, align 4
  store i32 %69, i32* %2, align 4
  br label %184

70:                                               ; preds = %62
  %71 = load i32, i32* @ARM_MI, align 4
  store i32 %71, i32* %2, align 4
  br label %184

72:                                               ; preds = %62
  %73 = call i32 (...) @gcc_unreachable()
  br label %74

74:                                               ; preds = %72
  br label %75

75:                                               ; preds = %23, %74
  %76 = load i32, i32* %6, align 4
  switch i32 %76, label %81 [
    i32 135, label %77
    i32 145, label %79
  ]

77:                                               ; preds = %75
  %78 = load i32, i32* @ARM_NE, align 4
  store i32 %78, i32* %2, align 4
  br label %184

79:                                               ; preds = %75
  %80 = load i32, i32* @ARM_EQ, align 4
  store i32 %80, i32* %2, align 4
  br label %184

81:                                               ; preds = %75
  %82 = call i32 (...) @gcc_unreachable()
  br label %83

83:                                               ; preds = %81
  br label %84

84:                                               ; preds = %23, %83
  %85 = load i32, i32* %6, align 4
  switch i32 %85, label %90 [
    i32 135, label %86
    i32 145, label %88
  ]

86:                                               ; preds = %84
  %87 = load i32, i32* @ARM_MI, align 4
  store i32 %87, i32* %2, align 4
  br label %184

88:                                               ; preds = %84
  %89 = load i32, i32* @ARM_PL, align 4
  store i32 %89, i32* %2, align 4
  br label %184

90:                                               ; preds = %84
  %91 = call i32 (...) @gcc_unreachable()
  br label %92

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %23, %23, %92
  %94 = load i32, i32* %6, align 4
  switch i32 %94, label %120 [
    i32 144, label %95
    i32 142, label %97
    i32 140, label %99
    i32 138, label %101
    i32 135, label %103
    i32 145, label %105
    i32 134, label %107
    i32 128, label %109
    i32 129, label %111
    i32 130, label %113
    i32 131, label %115
    i32 132, label %117
    i32 133, label %119
    i32 137, label %119
  ]

95:                                               ; preds = %93
  %96 = load i32, i32* @ARM_GE, align 4
  store i32 %96, i32* %2, align 4
  br label %184

97:                                               ; preds = %93
  %98 = load i32, i32* @ARM_GT, align 4
  store i32 %98, i32* %2, align 4
  br label %184

99:                                               ; preds = %93
  %100 = load i32, i32* @ARM_LS, align 4
  store i32 %100, i32* %2, align 4
  br label %184

101:                                              ; preds = %93
  %102 = load i32, i32* @ARM_MI, align 4
  store i32 %102, i32* %2, align 4
  br label %184

103:                                              ; preds = %93
  %104 = load i32, i32* @ARM_NE, align 4
  store i32 %104, i32* %2, align 4
  br label %184

105:                                              ; preds = %93
  %106 = load i32, i32* @ARM_EQ, align 4
  store i32 %106, i32* %2, align 4
  br label %184

107:                                              ; preds = %93
  %108 = load i32, i32* @ARM_VC, align 4
  store i32 %108, i32* %2, align 4
  br label %184

109:                                              ; preds = %93
  %110 = load i32, i32* @ARM_VS, align 4
  store i32 %110, i32* %2, align 4
  br label %184

111:                                              ; preds = %93
  %112 = load i32, i32* @ARM_LT, align 4
  store i32 %112, i32* %2, align 4
  br label %184

113:                                              ; preds = %93
  %114 = load i32, i32* @ARM_LE, align 4
  store i32 %114, i32* %2, align 4
  br label %184

115:                                              ; preds = %93
  %116 = load i32, i32* @ARM_HI, align 4
  store i32 %116, i32* %2, align 4
  br label %184

117:                                              ; preds = %93
  %118 = load i32, i32* @ARM_PL, align 4
  store i32 %118, i32* %2, align 4
  br label %184

119:                                              ; preds = %93, %93
  br label %120

120:                                              ; preds = %93, %119
  %121 = call i32 (...) @gcc_unreachable()
  br label %122

122:                                              ; preds = %120
  br label %123

123:                                              ; preds = %23, %122
  %124 = load i32, i32* %6, align 4
  switch i32 %124, label %145 [
    i32 135, label %125
    i32 145, label %127
    i32 144, label %129
    i32 142, label %131
    i32 140, label %133
    i32 138, label %135
    i32 143, label %137
    i32 141, label %139
    i32 139, label %141
    i32 136, label %143
  ]

125:                                              ; preds = %123
  %126 = load i32, i32* @ARM_NE, align 4
  store i32 %126, i32* %2, align 4
  br label %184

127:                                              ; preds = %123
  %128 = load i32, i32* @ARM_EQ, align 4
  store i32 %128, i32* %2, align 4
  br label %184

129:                                              ; preds = %123
  %130 = load i32, i32* @ARM_LE, align 4
  store i32 %130, i32* %2, align 4
  br label %184

131:                                              ; preds = %123
  %132 = load i32, i32* @ARM_LT, align 4
  store i32 %132, i32* %2, align 4
  br label %184

133:                                              ; preds = %123
  %134 = load i32, i32* @ARM_GE, align 4
  store i32 %134, i32* %2, align 4
  br label %184

135:                                              ; preds = %123
  %136 = load i32, i32* @ARM_GT, align 4
  store i32 %136, i32* %2, align 4
  br label %184

137:                                              ; preds = %123
  %138 = load i32, i32* @ARM_LS, align 4
  store i32 %138, i32* %2, align 4
  br label %184

139:                                              ; preds = %123
  %140 = load i32, i32* @ARM_CC, align 4
  store i32 %140, i32* %2, align 4
  br label %184

141:                                              ; preds = %123
  %142 = load i32, i32* @ARM_CS, align 4
  store i32 %142, i32* %2, align 4
  br label %184

143:                                              ; preds = %123
  %144 = load i32, i32* @ARM_HI, align 4
  store i32 %144, i32* %2, align 4
  br label %184

145:                                              ; preds = %123
  %146 = call i32 (...) @gcc_unreachable()
  br label %147

147:                                              ; preds = %145
  br label %148

148:                                              ; preds = %23, %147
  %149 = load i32, i32* %6, align 4
  switch i32 %149, label %154 [
    i32 136, label %150
    i32 143, label %152
  ]

150:                                              ; preds = %148
  %151 = load i32, i32* @ARM_CS, align 4
  store i32 %151, i32* %2, align 4
  br label %184

152:                                              ; preds = %148
  %153 = load i32, i32* @ARM_CC, align 4
  store i32 %153, i32* %2, align 4
  br label %184

154:                                              ; preds = %148
  %155 = call i32 (...) @gcc_unreachable()
  br label %156

156:                                              ; preds = %154
  br label %157

157:                                              ; preds = %23, %156
  %158 = load i32, i32* %6, align 4
  switch i32 %158, label %179 [
    i32 135, label %159
    i32 145, label %161
    i32 144, label %163
    i32 142, label %165
    i32 140, label %167
    i32 138, label %169
    i32 143, label %171
    i32 141, label %173
    i32 139, label %175
    i32 136, label %177
  ]

159:                                              ; preds = %157
  %160 = load i32, i32* @ARM_NE, align 4
  store i32 %160, i32* %2, align 4
  br label %184

161:                                              ; preds = %157
  %162 = load i32, i32* @ARM_EQ, align 4
  store i32 %162, i32* %2, align 4
  br label %184

163:                                              ; preds = %157
  %164 = load i32, i32* @ARM_GE, align 4
  store i32 %164, i32* %2, align 4
  br label %184

165:                                              ; preds = %157
  %166 = load i32, i32* @ARM_GT, align 4
  store i32 %166, i32* %2, align 4
  br label %184

167:                                              ; preds = %157
  %168 = load i32, i32* @ARM_LE, align 4
  store i32 %168, i32* %2, align 4
  br label %184

169:                                              ; preds = %157
  %170 = load i32, i32* @ARM_LT, align 4
  store i32 %170, i32* %2, align 4
  br label %184

171:                                              ; preds = %157
  %172 = load i32, i32* @ARM_CS, align 4
  store i32 %172, i32* %2, align 4
  br label %184

173:                                              ; preds = %157
  %174 = load i32, i32* @ARM_HI, align 4
  store i32 %174, i32* %2, align 4
  br label %184

175:                                              ; preds = %157
  %176 = load i32, i32* @ARM_LS, align 4
  store i32 %176, i32* %2, align 4
  br label %184

177:                                              ; preds = %157
  %178 = load i32, i32* @ARM_CC, align 4
  store i32 %178, i32* %2, align 4
  br label %184

179:                                              ; preds = %157
  %180 = call i32 (...) @gcc_unreachable()
  br label %181

181:                                              ; preds = %179
  br label %182

182:                                              ; preds = %23, %181
  %183 = call i32 (...) @gcc_unreachable()
  br label %184

184:                                              ; preds = %57, %60, %64, %66, %68, %70, %77, %79, %86, %88, %95, %97, %99, %101, %103, %105, %107, %109, %111, %113, %115, %117, %125, %127, %129, %131, %133, %135, %137, %139, %141, %143, %150, %152, %159, %161, %163, %165, %167, %169, %171, %173, %175, %177, %182
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @SELECT_CC_MODE(i32, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @ARM_INVERSE_CONDITION_CODE(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
