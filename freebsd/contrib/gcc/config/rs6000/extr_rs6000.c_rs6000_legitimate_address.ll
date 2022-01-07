; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_legitimate_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_legitimate_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_ALTIVEC = common dso_local global i64 0, align 8
@AND = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@PRE_INC = common dso_local global i64 0, align 8
@PRE_DEC = common dso_local global i64 0, align 8
@TFmode = common dso_local global i32 0, align 4
@TARGET_E500_DOUBLE = common dso_local global i64 0, align 8
@DFmode = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@TARGET_UPDATE = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8
@virtual_stack_vars_rtx = common dso_local global i64 0, align 8
@arg_pointer_rtx = common dso_local global i64 0, align 8
@TImode = common dso_local global i32 0, align 4
@TARGET_HARD_FLOAT = common dso_local global i64 0, align 8
@TARGET_FPRS = common dso_local global i64 0, align 8
@TARGET_POWERPC64 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs6000_legitimate_address(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* @TARGET_ALTIVEC, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @ALTIVEC_VECTOR_MODE(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @GET_CODE(i64 %15)
  %17 = load i64, i64* @AND, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @XEXP(i64 %20, i32 1)
  %22 = call i64 @GET_CODE(i64 %21)
  %23 = load i64, i64* @CONST_INT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @XEXP(i64 %26, i32 1)
  %28 = call i32 @INTVAL(i64 %27)
  %29 = icmp eq i32 %28, -16
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @XEXP(i64 %31, i32 0)
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %30, %25, %19, %14, %10, %3
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @RS6000_SYMBOL_REF_TLS_P(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %185

38:                                               ; preds = %33
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @legitimate_indirect_address_p(i64 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %185

44:                                               ; preds = %38
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @GET_CODE(i64 %45)
  %47 = load i64, i64* @PRE_INC, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* %6, align 8
  %51 = call i64 @GET_CODE(i64 %50)
  %52 = load i64, i64* @PRE_DEC, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %87

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @ALTIVEC_VECTOR_MODE(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %87, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @SPE_VECTOR_MODE(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %87, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @TFmode, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %62
  %67 = load i64, i64* @TARGET_E500_DOUBLE, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @DFmode, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %87, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @DImode, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %87, label %77

77:                                               ; preds = %73, %66
  %78 = load i64, i64* @TARGET_UPDATE, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load i64, i64* %6, align 8
  %82 = call i64 @XEXP(i64 %81, i32 0)
  %83 = load i32, i32* %7, align 4
  %84 = call i64 @legitimate_indirect_address_p(i64 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i32 1, i32* %4, align 4
  br label %185

87:                                               ; preds = %80, %77, %73, %69, %62, %58, %54, %49
  %88 = load i32, i32* %5, align 4
  %89 = load i64, i64* %6, align 8
  %90 = call i64 @legitimate_small_data_p(i32 %88, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 1, i32* %4, align 4
  br label %185

93:                                               ; preds = %87
  %94 = load i64, i64* %6, align 8
  %95 = call i64 @legitimate_constant_pool_address_p(i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 1, i32* %4, align 4
  br label %185

98:                                               ; preds = %93
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %129, label %101

101:                                              ; preds = %98
  %102 = load i64, i64* %6, align 8
  %103 = call i64 @GET_CODE(i64 %102)
  %104 = load i64, i64* @PLUS, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %129

106:                                              ; preds = %101
  %107 = load i64, i64* %6, align 8
  %108 = call i64 @XEXP(i64 %107, i32 0)
  %109 = call i64 @GET_CODE(i64 %108)
  %110 = load i64, i64* @REG, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %129

112:                                              ; preds = %106
  %113 = load i64, i64* %6, align 8
  %114 = call i64 @XEXP(i64 %113, i32 0)
  %115 = load i64, i64* @virtual_stack_vars_rtx, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load i64, i64* %6, align 8
  %119 = call i64 @XEXP(i64 %118, i32 0)
  %120 = load i64, i64* @arg_pointer_rtx, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %117, %112
  %123 = load i64, i64* %6, align 8
  %124 = call i64 @XEXP(i64 %123, i32 1)
  %125 = call i64 @GET_CODE(i64 %124)
  %126 = load i64, i64* @CONST_INT, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  store i32 1, i32* %4, align 4
  br label %185

129:                                              ; preds = %122, %117, %106, %101, %98
  %130 = load i32, i32* %5, align 4
  %131 = load i64, i64* %6, align 8
  %132 = load i32, i32* %7, align 4
  %133 = call i64 @rs6000_legitimate_offset_address_p(i32 %130, i64 %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  store i32 1, i32* %4, align 4
  br label %185

136:                                              ; preds = %129
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @TImode, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %177

140:                                              ; preds = %136
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @TFmode, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %177

144:                                              ; preds = %140
  %145 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i64, i64* @TARGET_FPRS, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %164, label %150

150:                                              ; preds = %147, %144
  %151 = load i64, i64* @TARGET_POWERPC64, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %164, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @DFmode, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %160, label %157

157:                                              ; preds = %153
  %158 = load i64, i64* @TARGET_E500_DOUBLE, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %177

160:                                              ; preds = %157, %153
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @TFmode, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %177

164:                                              ; preds = %160, %150, %147
  %165 = load i64, i64* @TARGET_POWERPC64, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* @DImode, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %167, %164
  %172 = load i64, i64* %6, align 8
  %173 = load i32, i32* %7, align 4
  %174 = call i64 @legitimate_indexed_address_p(i64 %172, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  store i32 1, i32* %4, align 4
  br label %185

177:                                              ; preds = %171, %167, %160, %157, %140, %136
  %178 = load i32, i32* %5, align 4
  %179 = load i64, i64* %6, align 8
  %180 = load i32, i32* %7, align 4
  %181 = call i64 @legitimate_lo_sum_address_p(i32 %178, i64 %179, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  store i32 1, i32* %4, align 4
  br label %185

184:                                              ; preds = %177
  store i32 0, i32* %4, align 4
  br label %185

185:                                              ; preds = %184, %183, %176, %135, %128, %97, %92, %86, %43, %37
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local i64 @ALTIVEC_VECTOR_MODE(i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i64 @RS6000_SYMBOL_REF_TLS_P(i64) #1

declare dso_local i64 @legitimate_indirect_address_p(i64, i32) #1

declare dso_local i32 @SPE_VECTOR_MODE(i32) #1

declare dso_local i64 @legitimate_small_data_p(i32, i64) #1

declare dso_local i64 @legitimate_constant_pool_address_p(i64) #1

declare dso_local i64 @rs6000_legitimate_offset_address_p(i32, i64, i32) #1

declare dso_local i64 @legitimate_indexed_address_p(i64, i32) #1

declare dso_local i64 @legitimate_lo_sum_address_p(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
