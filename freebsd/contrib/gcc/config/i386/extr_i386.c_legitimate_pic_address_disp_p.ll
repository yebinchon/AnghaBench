; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_legitimate_pic_address_disp_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_legitimate_pic_address_disp_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_64BIT = common dso_local global i64 0, align 8
@PLUS = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i32 0, align 4
@UNSPEC = common dso_local global i32 0, align 4
@UNSPEC_GOTPCREL = common dso_local global i32 0, align 4
@TARGET_MACHO = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@TLS_MODEL_INITIAL_EXEC = common dso_local global i32 0, align 4
@TLS_MODEL_LOCAL_EXEC = common dso_local global i32 0, align 4
@TLS_MODEL_LOCAL_DYNAMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @legitimate_pic_address_disp_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i64, i64* @TARGET_64BIT, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %69

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @GET_CODE(i32 %11)
  switch i32 %12, label %67 [
    i32 136, label %13
    i32 137, label %14
    i32 135, label %52
  ]

13:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %214

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @XEXP(i32 %15, i32 0)
  %17 = call i32 @GET_CODE(i32 %16)
  %18 = load i32, i32* @PLUS, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %68

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @XEXP(i32 %22, i32 0)
  %24 = call i32 @XEXP(i32 %23, i32 0)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @XEXP(i32 %25, i32 0)
  %27 = call i32 @XEXP(i32 %26, i32 1)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @GET_CODE(i32 %28)
  %30 = load i32, i32* @CONST_INT, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @INTVAL(i32 %33)
  %35 = icmp sge i32 %34, 16777216
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @INTVAL(i32 %37)
  %39 = icmp slt i32 %38, -16777216
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %32, %21
  br label %68

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @GET_CODE(i32 %42)
  %44 = icmp eq i32 %43, 136
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %214

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @GET_CODE(i32 %47)
  %49 = icmp ne i32 %48, 135
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %68

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %9, %51
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @SYMBOL_REF_TLS_MODEL(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %214

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @SYMBOL_REF_FAR_ADDR_P(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @SYMBOL_REF_LOCAL_P(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 1, i32* %2, align 4
  br label %214

66:                                               ; preds = %61, %57
  br label %68

67:                                               ; preds = %9
  br label %68

68:                                               ; preds = %67, %66, %50, %40, %20
  br label %69

69:                                               ; preds = %68, %1
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @GET_CODE(i32 %70)
  %72 = icmp ne i32 %71, 137
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %214

74:                                               ; preds = %69
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @XEXP(i32 %75, i32 0)
  store i32 %76, i32* %3, align 4
  %77 = load i64, i64* @TARGET_64BIT, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %106

79:                                               ; preds = %74
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @GET_CODE(i32 %80)
  %82 = load i32, i32* @UNSPEC, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %93, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @XINT(i32 %85, i32 1)
  %87 = load i32, i32* @UNSPEC_GOTPCREL, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @XINT(i32 %90, i32 1)
  %92 = icmp ne i32 %91, 131
  br i1 %92, label %93, label %94

93:                                               ; preds = %89, %79
  store i32 0, i32* %2, align 4
  br label %214

94:                                               ; preds = %89, %84
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @XVECEXP(i32 %95, i32 0, i32 0)
  %97 = call i32 @GET_CODE(i32 %96)
  %98 = icmp ne i32 %97, 135
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @XVECEXP(i32 %100, i32 0, i32 0)
  %102 = call i32 @GET_CODE(i32 %101)
  %103 = icmp ne i32 %102, 136
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %214

105:                                              ; preds = %99, %94
  store i32 1, i32* %2, align 4
  br label %214

106:                                              ; preds = %74
  store i32 0, i32* %4, align 4
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @GET_CODE(i32 %107)
  %109 = load i32, i32* @PLUS, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @XEXP(i32 %112, i32 1)
  %114 = call i32 @GET_CODE(i32 %113)
  %115 = load i32, i32* @CONST_INT, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %214

118:                                              ; preds = %111
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @XEXP(i32 %119, i32 0)
  store i32 %120, i32* %3, align 4
  store i32 1, i32* %4, align 4
  br label %121

121:                                              ; preds = %118, %106
  %122 = load i64, i64* @TARGET_MACHO, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load i32, i32* %3, align 4
  %126 = call i64 @darwin_local_data_pic(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i32 1, i32* %2, align 4
  br label %214

129:                                              ; preds = %124, %121
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @GET_CODE(i32 %130)
  %132 = load i32, i32* @UNSPEC, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i32 0, i32* %2, align 4
  br label %214

135:                                              ; preds = %129
  %136 = load i32, i32* %3, align 4
  %137 = call i32 @XINT(i32 %136, i32 1)
  switch i32 %137, label %213 [
    i32 133, label %138
    i32 131, label %148
    i32 130, label %167
    i32 132, label %167
    i32 129, label %167
    i32 128, label %185
    i32 134, label %199
  ]

138:                                              ; preds = %135
  %139 = load i32, i32* %4, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 0, i32* %2, align 4
  br label %214

142:                                              ; preds = %138
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @XVECEXP(i32 %143, i32 0, i32 0)
  %145 = call i32 @GET_CODE(i32 %144)
  %146 = icmp eq i32 %145, 135
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %2, align 4
  br label %214

148:                                              ; preds = %135
  %149 = load i32, i32* %3, align 4
  %150 = call i32 @XVECEXP(i32 %149, i32 0, i32 0)
  %151 = call i32 @GET_CODE(i32 %150)
  %152 = icmp eq i32 %151, 135
  br i1 %152, label %158, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* %3, align 4
  %155 = call i32 @XVECEXP(i32 %154, i32 0, i32 0)
  %156 = call i32 @GET_CODE(i32 %155)
  %157 = icmp eq i32 %156, 136
  br i1 %157, label %158, label %166

158:                                              ; preds = %153, %148
  %159 = load i64, i64* @TARGET_64BIT, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %3, align 4
  %163 = call i32 @XVECEXP(i32 %162, i32 0, i32 0)
  %164 = load i32, i32* @Pmode, align 4
  %165 = call i32 @local_symbolic_operand(i32 %163, i32 %164)
  store i32 %165, i32* %2, align 4
  br label %214

166:                                              ; preds = %158, %153
  store i32 0, i32* %2, align 4
  br label %214

167:                                              ; preds = %135, %135, %135
  %168 = load i32, i32* %4, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  store i32 0, i32* %2, align 4
  br label %214

171:                                              ; preds = %167
  %172 = load i32, i32* %3, align 4
  %173 = call i32 @XVECEXP(i32 %172, i32 0, i32 0)
  store i32 %173, i32* %3, align 4
  %174 = load i32, i32* %3, align 4
  %175 = call i32 @GET_CODE(i32 %174)
  %176 = icmp eq i32 %175, 135
  br i1 %176, label %177, label %182

177:                                              ; preds = %171
  %178 = load i32, i32* %3, align 4
  %179 = call i32 @SYMBOL_REF_TLS_MODEL(i32 %178)
  %180 = load i32, i32* @TLS_MODEL_INITIAL_EXEC, align 4
  %181 = icmp eq i32 %179, %180
  br label %182

182:                                              ; preds = %177, %171
  %183 = phi i1 [ false, %171 ], [ %181, %177 ]
  %184 = zext i1 %183 to i32
  store i32 %184, i32* %2, align 4
  br label %214

185:                                              ; preds = %135
  %186 = load i32, i32* %3, align 4
  %187 = call i32 @XVECEXP(i32 %186, i32 0, i32 0)
  store i32 %187, i32* %3, align 4
  %188 = load i32, i32* %3, align 4
  %189 = call i32 @GET_CODE(i32 %188)
  %190 = icmp eq i32 %189, 135
  br i1 %190, label %191, label %196

191:                                              ; preds = %185
  %192 = load i32, i32* %3, align 4
  %193 = call i32 @SYMBOL_REF_TLS_MODEL(i32 %192)
  %194 = load i32, i32* @TLS_MODEL_LOCAL_EXEC, align 4
  %195 = icmp eq i32 %193, %194
  br label %196

196:                                              ; preds = %191, %185
  %197 = phi i1 [ false, %185 ], [ %195, %191 ]
  %198 = zext i1 %197 to i32
  store i32 %198, i32* %2, align 4
  br label %214

199:                                              ; preds = %135
  %200 = load i32, i32* %3, align 4
  %201 = call i32 @XVECEXP(i32 %200, i32 0, i32 0)
  store i32 %201, i32* %3, align 4
  %202 = load i32, i32* %3, align 4
  %203 = call i32 @GET_CODE(i32 %202)
  %204 = icmp eq i32 %203, 135
  br i1 %204, label %205, label %210

205:                                              ; preds = %199
  %206 = load i32, i32* %3, align 4
  %207 = call i32 @SYMBOL_REF_TLS_MODEL(i32 %206)
  %208 = load i32, i32* @TLS_MODEL_LOCAL_DYNAMIC, align 4
  %209 = icmp eq i32 %207, %208
  br label %210

210:                                              ; preds = %205, %199
  %211 = phi i1 [ false, %199 ], [ %209, %205 ]
  %212 = zext i1 %211 to i32
  store i32 %212, i32* %2, align 4
  br label %214

213:                                              ; preds = %135
  store i32 0, i32* %2, align 4
  br label %214

214:                                              ; preds = %213, %210, %196, %182, %170, %166, %161, %142, %141, %134, %128, %117, %105, %104, %93, %73, %65, %56, %45, %13
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @SYMBOL_REF_TLS_MODEL(i32) #1

declare dso_local i32 @SYMBOL_REF_FAR_ADDR_P(i32) #1

declare dso_local i32 @SYMBOL_REF_LOCAL_P(i32) #1

declare dso_local i32 @XINT(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i64 @darwin_local_data_pic(i32) #1

declare dso_local i32 @local_symbolic_operand(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
