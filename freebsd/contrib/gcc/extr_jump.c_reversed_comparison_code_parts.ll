; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_reversed_comparison_code_parts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_reversed_comparison_code_parts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTX_COMPARE = common dso_local global i64 0, align 8
@RTX_COMM_COMPARE = common dso_local global i64 0, align 8
@UNKNOWN = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@MODE_CC = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@COMPARE = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reversed_comparison_code_parts(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @GET_RTX_CLASS(i32 %15)
  %17 = load i64, i64* @RTX_COMPARE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @GET_RTX_CLASS(i32 %20)
  %22 = load i64, i64* @RTX_COMM_COMPARE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @UNKNOWN, align 4
  store i32 %25, i32* %5, align 4
  br label %164

26:                                               ; preds = %19, %4
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @GET_MODE(i64 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @VOIDmode, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @GET_MODE(i64 %33)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @GET_MODE_CLASS(i32 %36)
  %38 = load i64, i64* @MODE_CC, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @REVERSIBLE_CC_MODE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @reverse_condition(i32 %45)
  store i32 %46, i32* %5, align 4
  br label %164

47:                                               ; preds = %40, %35
  %48 = load i32, i32* %6, align 4
  switch i32 %48, label %57 [
    i32 140, label %49
    i32 139, label %49
    i32 138, label %49
    i32 136, label %49
    i32 135, label %49
    i32 141, label %49
    i32 134, label %52
    i32 128, label %52
    i32 137, label %52
    i32 133, label %52
    i32 129, label %55
    i32 130, label %55
    i32 131, label %55
    i32 132, label %55
  ]

49:                                               ; preds = %47, %47, %47, %47, %47, %47
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @reverse_condition(i32 %50)
  store i32 %51, i32* %5, align 4
  br label %164

52:                                               ; preds = %47, %47, %47, %47
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @reverse_condition_maybe_unordered(i32 %53)
  store i32 %54, i32* %5, align 4
  br label %164

55:                                               ; preds = %47, %47, %47, %47
  %56 = load i32, i32* @UNKNOWN, align 4
  store i32 %56, i32* %5, align 4
  br label %164

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @GET_MODE_CLASS(i32 %59)
  %61 = load i64, i64* @MODE_CC, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load i64, i64* %7, align 8
  %65 = call i64 @CC0_P(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %140

67:                                               ; preds = %63, %58
  %68 = load i64, i64* %9, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* @UNKNOWN, align 4
  store i32 %71, i32* %5, align 4
  br label %164

72:                                               ; preds = %67
  %73 = load i64, i64* %9, align 8
  %74 = call i64 @prev_nonnote_insn(i64 %73)
  store i64 %74, i64* %11, align 8
  br label %75

75:                                               ; preds = %136, %72
  %76 = load i64, i64* %11, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @LABEL_P(i64 %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  br label %83

83:                                               ; preds = %78, %75
  %84 = phi i1 [ false, %75 ], [ %82, %78 ]
  br i1 %84, label %85, label %139

85:                                               ; preds = %83
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* %11, align 8
  %88 = call i64 @set_of(i64 %86, i64 %87)
  store i64 %88, i64* %12, align 8
  %89 = load i64, i64* %12, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %130

91:                                               ; preds = %85
  %92 = load i64, i64* %12, align 8
  %93 = call i64 @GET_CODE(i64 %92)
  %94 = load i64, i64* @SET, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %130

96:                                               ; preds = %91
  %97 = load i64, i64* %12, align 8
  %98 = call i32 @SET_DEST(i64 %97)
  %99 = load i64, i64* %7, align 8
  %100 = call i64 @rtx_equal_p(i32 %98, i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %130

102:                                              ; preds = %96
  %103 = load i64, i64* %12, align 8
  %104 = call i64 @SET_SRC(i64 %103)
  store i64 %104, i64* %13, align 8
  %105 = load i64, i64* %13, align 8
  %106 = call i64 @GET_CODE(i64 %105)
  %107 = load i64, i64* @COMPARE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %102
  %110 = load i64, i64* %13, align 8
  store i64 %110, i64* %14, align 8
  %111 = load i64, i64* %13, align 8
  %112 = call i64 @XEXP(i64 %111, i32 0)
  store i64 %112, i64* %7, align 8
  %113 = load i64, i64* %7, align 8
  %114 = call i32 @GET_MODE(i64 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @VOIDmode, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %109
  %119 = load i64, i64* %14, align 8
  %120 = call i64 @XEXP(i64 %119, i32 1)
  %121 = call i32 @GET_MODE(i64 %120)
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %118, %109
  br label %139

123:                                              ; preds = %102
  %124 = load i64, i64* %13, align 8
  %125 = call i64 @REG_P(i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i64, i64* %13, align 8
  store i64 %128, i64* %7, align 8
  br label %136

129:                                              ; preds = %123
  br label %130

130:                                              ; preds = %129, %96, %91, %85
  %131 = load i64, i64* %12, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32, i32* @UNKNOWN, align 4
  store i32 %134, i32* %5, align 4
  br label %164

135:                                              ; preds = %130
  br label %136

136:                                              ; preds = %135, %127
  %137 = load i64, i64* %11, align 8
  %138 = call i64 @prev_nonnote_insn(i64 %137)
  store i64 %138, i64* %11, align 8
  br label %75

139:                                              ; preds = %122, %83
  br label %140

140:                                              ; preds = %139, %63
  %141 = load i64, i64* %7, align 8
  %142 = call i64 @GET_CODE(i64 %141)
  %143 = load i64, i64* @CONST_INT, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %159, label %145

145:                                              ; preds = %140
  %146 = load i64, i64* %7, align 8
  %147 = call i32 @GET_MODE(i64 %146)
  %148 = load i32, i32* @VOIDmode, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %162

150:                                              ; preds = %145
  %151 = load i32, i32* %10, align 4
  %152 = call i64 @GET_MODE_CLASS(i32 %151)
  %153 = load i64, i64* @MODE_CC, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %150
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @HONOR_NANS(i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %155, %140
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @reverse_condition(i32 %160)
  store i32 %161, i32* %5, align 4
  br label %164

162:                                              ; preds = %155, %150, %145
  %163 = load i32, i32* @UNKNOWN, align 4
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %162, %159, %133, %70, %55, %52, %49, %44, %24
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i64 @GET_RTX_CLASS(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i64 @REVERSIBLE_CC_MODE(i32) #1

declare dso_local i32 @reverse_condition(i32) #1

declare dso_local i32 @reverse_condition_maybe_unordered(i32) #1

declare dso_local i64 @CC0_P(i64) #1

declare dso_local i64 @prev_nonnote_insn(i64) #1

declare dso_local i32 @LABEL_P(i64) #1

declare dso_local i64 @set_of(i64, i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @rtx_equal_p(i32, i64) #1

declare dso_local i32 @SET_DEST(i64) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i32 @HONOR_NANS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
