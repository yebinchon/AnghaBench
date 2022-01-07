; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_gen_lowpart_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_gen_lowpart_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST_INT = common dso_local global i64 0, align 8
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4
@MODE_INT = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@ZERO_EXTEND = common dso_local global i64 0, align 8
@SIGN_EXTEND = common dso_local global i64 0, align 8
@MODE_PARTIAL_INT = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@CONCAT = common dso_local global i64 0, align 8
@CONST_VECTOR = common dso_local global i64 0, align 8
@CONST_DOUBLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_lowpart_common(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @GET_MODE_SIZE(i32 %10)
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @GET_MODE(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @GET_CODE(i32 %14)
  %16 = load i64, i64* @CONST_INT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @BITS_PER_UNIT, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %26 = load i64, i64* @MODE_INT, align 8
  %27 = call i32 @mode_for_size(i32 %25, i64 %26, i32 0)
  store i32 %27, i32* %9, align 4
  br label %38

28:                                               ; preds = %18, %2
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @VOIDmode, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %34 = mul nsw i32 %33, 2
  %35 = load i64, i64* @MODE_INT, align 8
  %36 = call i32 @mode_for_size(i32 %34, i64 %35, i32 0)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %32, %28
  br label %38

38:                                               ; preds = %37, %24
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @GET_MODE_SIZE(i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @VOIDmode, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @BLKmode, align 4
  %47 = icmp ne i32 %45, %46
  br label %48

48:                                               ; preds = %44, %38
  %49 = phi i1 [ false, %38 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @gcc_assert(i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %3, align 4
  br label %176

57:                                               ; preds = %48
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @UNITS_PER_WORD, align 4
  %60 = sub nsw i32 %59, 1
  %61 = add nsw i32 %58, %60
  %62 = load i32, i32* @UNITS_PER_WORD, align 4
  %63 = sdiv i32 %61, %62
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @UNITS_PER_WORD, align 4
  %66 = sub nsw i32 %65, 1
  %67 = add nsw i32 %64, %66
  %68 = load i32, i32* @UNITS_PER_WORD, align 4
  %69 = sdiv i32 %67, %68
  %70 = icmp sgt i32 %63, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %176

72:                                               ; preds = %57
  %73 = load i32, i32* %4, align 4
  %74 = call i64 @SCALAR_FLOAT_MODE_P(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %176

81:                                               ; preds = %76, %72
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @subreg_lowpart_offset(i32 %82, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i64 @GET_CODE(i32 %85)
  %87 = load i64, i64* @ZERO_EXTEND, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %94, label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %5, align 4
  %91 = call i64 @GET_CODE(i32 %90)
  %92 = load i64, i64* @SIGN_EXTEND, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %139

94:                                               ; preds = %89, %81
  %95 = load i32, i32* %4, align 4
  %96 = call i64 @GET_MODE_CLASS(i32 %95)
  %97 = load i64, i64* @MODE_INT, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %4, align 4
  %101 = call i64 @GET_MODE_CLASS(i32 %100)
  %102 = load i64, i64* @MODE_PARTIAL_INT, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %139

104:                                              ; preds = %99, %94
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @XEXP(i32 %105, i32 0)
  %107 = call i32 @GET_MODE(i32 %106)
  %108 = load i32, i32* %4, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @XEXP(i32 %111, i32 0)
  store i32 %112, i32* %3, align 4
  br label %176

113:                                              ; preds = %104
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @XEXP(i32 %115, i32 0)
  %117 = call i32 @GET_MODE(i32 %116)
  %118 = call i32 @GET_MODE_SIZE(i32 %117)
  %119 = icmp slt i32 %114, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @XEXP(i32 %122, i32 0)
  %124 = call i32 @gen_lowpart_common(i32 %121, i32 %123)
  store i32 %124, i32* %3, align 4
  br label %176

125:                                              ; preds = %113
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = load i32, i32* %5, align 4
  %131 = call i64 @GET_CODE(i32 %130)
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @XEXP(i32 %133, i32 0)
  %135 = call i32 @gen_rtx_fmt_e(i64 %131, i32 %132, i32 %134)
  store i32 %135, i32* %3, align 4
  br label %176

136:                                              ; preds = %125
  br label %137

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137
  br label %175

139:                                              ; preds = %99, %89
  %140 = load i32, i32* %5, align 4
  %141 = call i64 @GET_CODE(i32 %140)
  %142 = load i64, i64* @SUBREG, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %168, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* %5, align 4
  %146 = call i64 @REG_P(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %168, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %5, align 4
  %150 = call i64 @GET_CODE(i32 %149)
  %151 = load i64, i64* @CONCAT, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %168, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* %5, align 4
  %155 = call i64 @GET_CODE(i32 %154)
  %156 = load i64, i64* @CONST_VECTOR, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %168, label %158

158:                                              ; preds = %153
  %159 = load i32, i32* %5, align 4
  %160 = call i64 @GET_CODE(i32 %159)
  %161 = load i64, i64* @CONST_DOUBLE, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %168, label %163

163:                                              ; preds = %158
  %164 = load i32, i32* %5, align 4
  %165 = call i64 @GET_CODE(i32 %164)
  %166 = load i64, i64* @CONST_INT, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %163, %158, %153, %148, %144, %139
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @simplify_gen_subreg(i32 %169, i32 %170, i32 %171, i32 %172)
  store i32 %173, i32* %3, align 4
  br label %176

174:                                              ; preds = %163
  br label %175

175:                                              ; preds = %174, %138
  store i32 0, i32* %3, align 4
  br label %176

176:                                              ; preds = %175, %168, %129, %120, %110, %80, %71, %55
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @mode_for_size(i32, i64, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local i32 @subreg_lowpart_offset(i32, i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @gen_rtx_fmt_e(i64, i32, i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @simplify_gen_subreg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
