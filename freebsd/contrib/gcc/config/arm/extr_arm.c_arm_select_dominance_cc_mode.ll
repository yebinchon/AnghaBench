; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_select_dominance_cc_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_select_dominance_cc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCmode = common dso_local global i64 0, align 8
@DOM_CC_NX_OR_Y = common dso_local global i64 0, align 8
@DOM_CC_X_AND_Y = common dso_local global i64 0, align 8
@CC_DEQmode = common dso_local global i32 0, align 4
@CC_DLEmode = common dso_local global i32 0, align 4
@CC_DLEUmode = common dso_local global i32 0, align 4
@CC_DGEmode = common dso_local global i32 0, align 4
@CC_DGEUmode = common dso_local global i32 0, align 4
@CC_DLTmode = common dso_local global i32 0, align 4
@CC_DNEmode = common dso_local global i32 0, align 4
@CC_DGTmode = common dso_local global i32 0, align 4
@CC_DLTUmode = common dso_local global i32 0, align 4
@CC_DGTUmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_select_dominance_cc_mode(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @GET_CODE(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @XEXP(i32 %14, i32 0)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @XEXP(i32 %16, i32 1)
  %18 = call i64 @arm_select_cc_mode(i32 %13, i32 %15, i32 %17)
  %19 = load i64, i64* @CCmode, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %31, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @GET_CODE(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @XEXP(i32 %24, i32 0)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @XEXP(i32 %26, i32 1)
  %28 = call i64 @arm_select_cc_mode(i32 %23, i32 %25, i32 %27)
  %29 = load i64, i64* @CCmode, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %21, %3
  %32 = load i64, i64* @CCmode, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %4, align 4
  br label %194

34:                                               ; preds = %21
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @DOM_CC_NX_OR_Y, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @reverse_condition(i32 %39)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @comparison_dominates_p(i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %45
  store i32 1, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @comparison_dominates_p(i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i64, i64* @CCmode, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %4, align 4
  br label %194

59:                                               ; preds = %50, %45, %41
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i32, i32* %8, align 4
  switch i32 %67, label %192 [
    i32 137, label %68
    i32 130, label %89
    i32 134, label %106
    i32 129, label %123
    i32 133, label %140
    i32 128, label %157
    i32 132, label %164
    i32 136, label %171
    i32 131, label %178
    i32 135, label %185
  ]

68:                                               ; preds = %66
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @DOM_CC_X_AND_Y, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @CC_DEQmode, align 4
  store i32 %73, i32* %4, align 4
  br label %194

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  switch i32 %75, label %86 [
    i32 137, label %76
    i32 132, label %78
    i32 131, label %80
    i32 136, label %82
    i32 135, label %84
  ]

76:                                               ; preds = %74
  %77 = load i32, i32* @CC_DEQmode, align 4
  store i32 %77, i32* %4, align 4
  br label %194

78:                                               ; preds = %74
  %79 = load i32, i32* @CC_DLEmode, align 4
  store i32 %79, i32* %4, align 4
  br label %194

80:                                               ; preds = %74
  %81 = load i32, i32* @CC_DLEUmode, align 4
  store i32 %81, i32* %4, align 4
  br label %194

82:                                               ; preds = %74
  %83 = load i32, i32* @CC_DGEmode, align 4
  store i32 %83, i32* %4, align 4
  br label %194

84:                                               ; preds = %74
  %85 = load i32, i32* @CC_DGEUmode, align 4
  store i32 %85, i32* %4, align 4
  br label %194

86:                                               ; preds = %74
  %87 = call i32 (...) @gcc_unreachable()
  br label %88

88:                                               ; preds = %86
  br label %89

89:                                               ; preds = %66, %88
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* @DOM_CC_X_AND_Y, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* @CC_DLTmode, align 4
  store i32 %94, i32* %4, align 4
  br label %194

95:                                               ; preds = %89
  %96 = load i32, i32* %9, align 4
  switch i32 %96, label %103 [
    i32 130, label %97
    i32 132, label %99
    i32 128, label %101
  ]

97:                                               ; preds = %95
  %98 = load i32, i32* @CC_DLTmode, align 4
  store i32 %98, i32* %4, align 4
  br label %194

99:                                               ; preds = %95
  %100 = load i32, i32* @CC_DLEmode, align 4
  store i32 %100, i32* %4, align 4
  br label %194

101:                                              ; preds = %95
  %102 = load i32, i32* @CC_DNEmode, align 4
  store i32 %102, i32* %4, align 4
  br label %194

103:                                              ; preds = %95
  %104 = call i32 (...) @gcc_unreachable()
  br label %105

105:                                              ; preds = %103
  br label %106

106:                                              ; preds = %66, %105
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* @DOM_CC_X_AND_Y, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* @CC_DGTmode, align 4
  store i32 %111, i32* %4, align 4
  br label %194

112:                                              ; preds = %106
  %113 = load i32, i32* %9, align 4
  switch i32 %113, label %120 [
    i32 134, label %114
    i32 136, label %116
    i32 128, label %118
  ]

114:                                              ; preds = %112
  %115 = load i32, i32* @CC_DGTmode, align 4
  store i32 %115, i32* %4, align 4
  br label %194

116:                                              ; preds = %112
  %117 = load i32, i32* @CC_DGEmode, align 4
  store i32 %117, i32* %4, align 4
  br label %194

118:                                              ; preds = %112
  %119 = load i32, i32* @CC_DNEmode, align 4
  store i32 %119, i32* %4, align 4
  br label %194

120:                                              ; preds = %112
  %121 = call i32 (...) @gcc_unreachable()
  br label %122

122:                                              ; preds = %120
  br label %123

123:                                              ; preds = %66, %122
  %124 = load i64, i64* %7, align 8
  %125 = load i64, i64* @DOM_CC_X_AND_Y, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* @CC_DLTUmode, align 4
  store i32 %128, i32* %4, align 4
  br label %194

129:                                              ; preds = %123
  %130 = load i32, i32* %9, align 4
  switch i32 %130, label %137 [
    i32 129, label %131
    i32 131, label %133
    i32 128, label %135
  ]

131:                                              ; preds = %129
  %132 = load i32, i32* @CC_DLTUmode, align 4
  store i32 %132, i32* %4, align 4
  br label %194

133:                                              ; preds = %129
  %134 = load i32, i32* @CC_DLEUmode, align 4
  store i32 %134, i32* %4, align 4
  br label %194

135:                                              ; preds = %129
  %136 = load i32, i32* @CC_DNEmode, align 4
  store i32 %136, i32* %4, align 4
  br label %194

137:                                              ; preds = %129
  %138 = call i32 (...) @gcc_unreachable()
  br label %139

139:                                              ; preds = %137
  br label %140

140:                                              ; preds = %66, %139
  %141 = load i64, i64* %7, align 8
  %142 = load i64, i64* @DOM_CC_X_AND_Y, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32, i32* @CC_DGTUmode, align 4
  store i32 %145, i32* %4, align 4
  br label %194

146:                                              ; preds = %140
  %147 = load i32, i32* %9, align 4
  switch i32 %147, label %154 [
    i32 133, label %148
    i32 135, label %150
    i32 128, label %152
  ]

148:                                              ; preds = %146
  %149 = load i32, i32* @CC_DGTUmode, align 4
  store i32 %149, i32* %4, align 4
  br label %194

150:                                              ; preds = %146
  %151 = load i32, i32* @CC_DGEUmode, align 4
  store i32 %151, i32* %4, align 4
  br label %194

152:                                              ; preds = %146
  %153 = load i32, i32* @CC_DNEmode, align 4
  store i32 %153, i32* %4, align 4
  br label %194

154:                                              ; preds = %146
  %155 = call i32 (...) @gcc_unreachable()
  br label %156

156:                                              ; preds = %154
  br label %157

157:                                              ; preds = %66, %156
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp eq i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @gcc_assert(i32 %161)
  %163 = load i32, i32* @CC_DNEmode, align 4
  store i32 %163, i32* %4, align 4
  br label %194

164:                                              ; preds = %66
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp eq i32 %165, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @gcc_assert(i32 %168)
  %170 = load i32, i32* @CC_DLEmode, align 4
  store i32 %170, i32* %4, align 4
  br label %194

171:                                              ; preds = %66
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp eq i32 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 @gcc_assert(i32 %175)
  %177 = load i32, i32* @CC_DGEmode, align 4
  store i32 %177, i32* %4, align 4
  br label %194

178:                                              ; preds = %66
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp eq i32 %179, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @gcc_assert(i32 %182)
  %184 = load i32, i32* @CC_DLEUmode, align 4
  store i32 %184, i32* %4, align 4
  br label %194

185:                                              ; preds = %66
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %9, align 4
  %188 = icmp eq i32 %186, %187
  %189 = zext i1 %188 to i32
  %190 = call i32 @gcc_assert(i32 %189)
  %191 = load i32, i32* @CC_DGEUmode, align 4
  store i32 %191, i32* %4, align 4
  br label %194

192:                                              ; preds = %66
  %193 = call i32 (...) @gcc_unreachable()
  br label %194

194:                                              ; preds = %31, %56, %72, %76, %78, %80, %82, %84, %93, %97, %99, %101, %110, %114, %116, %118, %127, %131, %133, %135, %144, %148, %150, %152, %157, %164, %171, %178, %185, %192
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local i64 @arm_select_cc_mode(i32, i32, i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @reverse_condition(i32) #1

declare dso_local i32 @comparison_dominates_p(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
