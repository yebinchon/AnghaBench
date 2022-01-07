; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_gen_lowpart_for_combine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_gen_lowpart_for_combine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Pmode = common dso_local global i32 0, align 4
@CONST = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@CONST_DOUBLE = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@BYTES_BIG_ENDIAN = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64)* @gen_lowpart_for_combine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gen_lowpart_for_combine(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @GET_MODE(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @GET_MODE_SIZE(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @GET_MODE_SIZE(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  store i64 %23, i64* %3, align 8
  br label %201

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @Pmode, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @GET_CODE(i64 %29)
  %31 = load i64, i64* @CONST, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @GET_CODE(i64 %34)
  %36 = load i64, i64* @SYMBOL_REF, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @GET_CODE(i64 %39)
  %41 = load i64, i64* @LABEL_REF, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38, %33, %28
  %44 = load i64, i64* %5, align 8
  store i64 %44, i64* %3, align 8
  br label %201

45:                                               ; preds = %38, %24
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @GET_MODE_SIZE(i32 %46)
  %48 = load i32, i32* @UNITS_PER_WORD, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @VOIDmode, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i64, i64* %5, align 8
  %56 = call i64 @GET_CODE(i64 %55)
  %57 = load i64, i64* @CONST_INT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %69, label %59

59:                                               ; preds = %54
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @GET_CODE(i64 %60)
  %62 = load i64, i64* @CONST_DOUBLE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %59, %50
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  br label %197

69:                                               ; preds = %64, %59, %54, %45
  %70 = load i64, i64* %5, align 8
  %71 = call i64 @GET_CODE(i64 %70)
  %72 = load i64, i64* @SUBREG, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %69
  %75 = load i64, i64* %5, align 8
  %76 = call i64 @SUBREG_REG(i64 %75)
  %77 = call i64 @MEM_P(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = load i64, i64* %5, align 8
  %81 = call i64 @SUBREG_REG(i64 %80)
  store i64 %81, i64* %5, align 8
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @GET_MODE(i64 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i64, i64* %5, align 8
  store i64 %88, i64* %3, align 8
  br label %201

89:                                               ; preds = %79
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @GET_MODE_SIZE(i32 %90)
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %89, %74, %69
  %93 = load i32, i32* %4, align 4
  %94 = load i64, i64* %5, align 8
  %95 = call i64 @gen_lowpart_common(i32 %93, i64 %94)
  store i64 %95, i64* %9, align 8
  %96 = load i64, i64* %9, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i64, i64* %9, align 8
  store i64 %99, i64* %3, align 8
  br label %201

100:                                              ; preds = %92
  %101 = load i64, i64* %5, align 8
  %102 = call i64 @MEM_P(i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %153

104:                                              ; preds = %100
  store i32 0, i32* %10, align 4
  %105 = load i64, i64* %5, align 8
  %106 = call i64 @MEM_VOLATILE_P(i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %104
  %109 = load i64, i64* %5, align 8
  %110 = call i32 @XEXP(i64 %109, i32 0)
  %111 = call i64 @mode_dependent_address_p(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108, %104
  br label %197

114:                                              ; preds = %108
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i32, i32* %4, align 4
  %120 = load i64, i64* %5, align 8
  %121 = call i64 @gen_rtx_SUBREG(i32 %119, i64 %120, i32 0)
  store i64 %121, i64* %3, align 8
  br label %201

122:                                              ; preds = %114
  %123 = load i64, i64* @WORDS_BIG_ENDIAN, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @UNITS_PER_WORD, align 4
  %128 = call i32 @MAX(i32 %126, i32 %127)
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @UNITS_PER_WORD, align 4
  %131 = call i32 @MAX(i32 %129, i32 %130)
  %132 = sub nsw i32 %128, %131
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %125, %122
  %134 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %133
  %137 = load i32, i32* @UNITS_PER_WORD, align 4
  %138 = load i32, i32* %7, align 4
  %139 = call i64 @MIN(i32 %137, i32 %138)
  %140 = load i32, i32* @UNITS_PER_WORD, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i64 @MIN(i32 %140, i32 %141)
  %143 = sub nsw i64 %139, %142
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = sub nsw i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %136, %133
  %149 = load i64, i64* %5, align 8
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* %10, align 4
  %152 = call i64 @adjust_address_nv(i64 %149, i32 %150, i32 %151)
  store i64 %152, i64* %3, align 8
  br label %201

153:                                              ; preds = %100
  %154 = load i64, i64* %5, align 8
  %155 = call i64 @COMPARISON_P(i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %153
  %158 = load i64, i64* %5, align 8
  %159 = call i64 @GET_CODE(i64 %158)
  %160 = load i32, i32* %4, align 4
  %161 = load i64, i64* %5, align 8
  %162 = call i32 @XEXP(i64 %161, i32 0)
  %163 = load i64, i64* %5, align 8
  %164 = call i32 @XEXP(i64 %163, i32 1)
  %165 = call i64 @gen_rtx_fmt_ee(i64 %159, i32 %160, i32 %162, i32 %164)
  store i64 %165, i64* %3, align 8
  br label %201

166:                                              ; preds = %153
  store i32 0, i32* %11, align 4
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @subreg_lowpart_offset(i32 %167, i32 %168)
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* @VOIDmode, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %166
  %174 = load i32, i32* %4, align 4
  %175 = call i32 @int_mode_for_mode(i32 %174)
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = load i64, i64* %5, align 8
  %178 = call i64 @gen_lowpart_common(i32 %176, i64 %177)
  store i64 %178, i64* %5, align 8
  %179 = load i64, i64* %5, align 8
  %180 = inttoptr i64 %179 to i8*
  %181 = icmp eq i8* %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %173
  br label %197

183:                                              ; preds = %173
  br label %184

184:                                              ; preds = %183, %166
  %185 = load i32, i32* %4, align 4
  %186 = load i64, i64* %5, align 8
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* %11, align 4
  %189 = call i64 @simplify_gen_subreg(i32 %185, i64 %186, i32 %187, i32 %188)
  store i64 %189, i64* %12, align 8
  %190 = load i64, i64* %12, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %184
  %193 = load i64, i64* %12, align 8
  store i64 %193, i64* %3, align 8
  br label %201

194:                                              ; preds = %184
  br label %195

195:                                              ; preds = %194
  br label %196

196:                                              ; preds = %195
  br label %197

197:                                              ; preds = %196, %182, %113, %68
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* @const0_rtx, align 4
  %200 = call i64 @gen_rtx_CLOBBER(i32 %198, i32 %199)
  store i64 %200, i64* %3, align 8
  br label %201

201:                                              ; preds = %197, %192, %157, %148, %118, %98, %87, %43, %22
  %202 = load i64, i64* %3, align 8
  ret i64 %202
}

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i64 @gen_lowpart_common(i32, i64) #1

declare dso_local i64 @MEM_VOLATILE_P(i64) #1

declare dso_local i64 @mode_dependent_address_p(i32) #1

declare dso_local i32 @XEXP(i64, i32) #1

declare dso_local i64 @gen_rtx_SUBREG(i32, i64, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i64 @adjust_address_nv(i64, i32, i32) #1

declare dso_local i64 @COMPARISON_P(i64) #1

declare dso_local i64 @gen_rtx_fmt_ee(i64, i32, i32, i32) #1

declare dso_local i32 @subreg_lowpart_offset(i32, i32) #1

declare dso_local i32 @int_mode_for_mode(i32) #1

declare dso_local i64 @simplify_gen_subreg(i32, i64, i32, i32) #1

declare dso_local i64 @gen_rtx_CLOBBER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
