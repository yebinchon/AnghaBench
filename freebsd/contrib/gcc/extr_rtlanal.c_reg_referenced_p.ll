; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_reg_referenced_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_reg_referenced_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CC0 = common dso_local global i32 0, align 4
@PC = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reg_referenced_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @GET_CODE(i32 %7)
  switch i32 %8, label %175 [
    i32 132, label %9
    i32 139, label %74
    i32 138, label %94
    i32 128, label %94
    i32 135, label %94
    i32 131, label %98
    i32 133, label %103
    i32 130, label %108
    i32 129, label %108
    i32 134, label %128
    i32 137, label %148
    i32 136, label %163
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @SET_SRC(i32 %11)
  %13 = call i32 @reg_overlap_mentioned_p(i32 %10, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %176

16:                                               ; preds = %9
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @SET_DEST(i32 %17)
  %19 = call i32 @GET_CODE(i32 %18)
  %20 = load i32, i32* @CC0, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %73

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @SET_DEST(i32 %23)
  %25 = call i32 @GET_CODE(i32 %24)
  %26 = load i32, i32* @PC, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %73

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @SET_DEST(i32 %29)
  %31 = call i32 @REG_P(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %73, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @SET_DEST(i32 %34)
  %36 = call i32 @GET_CODE(i32 %35)
  %37 = load i32, i32* @SUBREG, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @SET_DEST(i32 %40)
  %42 = call i32 @SUBREG_REG(i32 %41)
  %43 = call i32 @REG_P(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @SET_DEST(i32 %46)
  %48 = call i32 @SUBREG_REG(i32 %47)
  %49 = call i32 @GET_MODE(i32 %48)
  %50 = call i32 @GET_MODE_SIZE(i32 %49)
  %51 = load i32, i32* @UNITS_PER_WORD, align 4
  %52 = sub nsw i32 %51, 1
  %53 = add nsw i32 %50, %52
  %54 = load i32, i32* @UNITS_PER_WORD, align 4
  %55 = sdiv i32 %53, %54
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @SET_DEST(i32 %56)
  %58 = call i32 @GET_MODE(i32 %57)
  %59 = call i32 @GET_MODE_SIZE(i32 %58)
  %60 = load i32, i32* @UNITS_PER_WORD, align 4
  %61 = sub nsw i32 %60, 1
  %62 = add nsw i32 %59, %61
  %63 = load i32, i32* @UNITS_PER_WORD, align 4
  %64 = sdiv i32 %62, %63
  %65 = icmp eq i32 %55, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %45, %39, %33
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @SET_DEST(i32 %68)
  %70 = call i32 @reg_overlap_mentioned_p(i32 %67, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %176

73:                                               ; preds = %66, %45, %28, %22, %16
  store i32 0, i32* %3, align 4
  br label %176

74:                                               ; preds = %2
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @ASM_OPERANDS_INPUT_LENGTH(i32 %75)
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %90, %74
  %79 = load i32, i32* %6, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @ASM_OPERANDS_INPUT(i32 %83, i32 %84)
  %86 = call i32 @reg_overlap_mentioned_p(i32 %82, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i32 1, i32* %3, align 4
  br label %176

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %6, align 4
  br label %78

93:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %176

94:                                               ; preds = %2, %2, %2
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @reg_overlap_mentioned_p(i32 %95, i32 %96)
  store i32 %97, i32* %3, align 4
  br label %176

98:                                               ; preds = %2
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @TRAP_CONDITION(i32 %100)
  %102 = call i32 @reg_overlap_mentioned_p(i32 %99, i32 %101)
  store i32 %102, i32* %3, align 4
  br label %176

103:                                              ; preds = %2
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @XEXP(i32 %105, i32 0)
  %107 = call i32 @reg_overlap_mentioned_p(i32 %104, i32 %106)
  store i32 %107, i32* %3, align 4
  br label %176

108:                                              ; preds = %2, %2
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @XVECLEN(i32 %109, i32 0)
  %111 = sub nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %124, %108
  %113 = load i32, i32* %6, align 4
  %114 = icmp sge i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %112
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @XVECEXP(i32 %117, i32 0, i32 %118)
  %120 = call i32 @reg_overlap_mentioned_p(i32 %116, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  store i32 1, i32* %3, align 4
  br label %176

123:                                              ; preds = %115
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %6, align 4
  br label %112

127:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %176

128:                                              ; preds = %2
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @XVECLEN(i32 %129, i32 0)
  %131 = sub nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %144, %128
  %133 = load i32, i32* %6, align 4
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %132
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @XVECEXP(i32 %137, i32 0, i32 %138)
  %140 = call i32 @reg_referenced_p(i32 %136, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  store i32 1, i32* %3, align 4
  br label %176

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %6, align 4
  br label %132

147:                                              ; preds = %132
  store i32 0, i32* %3, align 4
  br label %176

148:                                              ; preds = %2
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @XEXP(i32 %149, i32 0)
  %151 = call i32 @MEM_P(i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %148
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @XEXP(i32 %155, i32 0)
  %157 = call i32 @XEXP(i32 %156, i32 0)
  %158 = call i32 @reg_overlap_mentioned_p(i32 %154, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  store i32 1, i32* %3, align 4
  br label %176

161:                                              ; preds = %153
  br label %162

162:                                              ; preds = %161, %148
  store i32 0, i32* %3, align 4
  br label %176

163:                                              ; preds = %2
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @COND_EXEC_TEST(i32 %165)
  %167 = call i32 @reg_overlap_mentioned_p(i32 %164, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  store i32 1, i32* %3, align 4
  br label %176

170:                                              ; preds = %163
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @COND_EXEC_CODE(i32 %172)
  %174 = call i32 @reg_referenced_p(i32 %171, i32 %173)
  store i32 %174, i32* %3, align 4
  br label %176

175:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %176

176:                                              ; preds = %175, %170, %169, %162, %160, %147, %142, %127, %122, %103, %98, %94, %93, %88, %73, %72, %15
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @reg_overlap_mentioned_p(i32, i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @ASM_OPERANDS_INPUT_LENGTH(i32) #1

declare dso_local i32 @ASM_OPERANDS_INPUT(i32, i32) #1

declare dso_local i32 @TRAP_CONDITION(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i32 @COND_EXEC_TEST(i32) #1

declare dso_local i32 @COND_EXEC_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
