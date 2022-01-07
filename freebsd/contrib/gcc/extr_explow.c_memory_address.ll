; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_explow.c_memory_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_explow.c_memory_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Pmode = common dso_local global i32 0, align 4
@cse_not_expected = common dso_local global i32 0, align 4
@win = common dso_local global i32 0, align 4
@PLUS = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i32 0, align 4
@MULT = common dso_local global i64 0, align 8
@MINUS = common dso_local global i64 0, align 8
@flag_force_addr = common dso_local global i64 0, align 8
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @memory_address(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* @Pmode, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @convert_memory_address(i32 %10, i64 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i32, i32* @cse_not_expected, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @CONSTANT_P(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @CONSTANT_ADDRESS_P(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @Pmode, align 4
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @force_reg(i32 %24, i64 %25)
  store i64 %26, i64* %5, align 8
  br label %142

27:                                               ; preds = %19, %15, %2
  %28 = load i32, i32* @cse_not_expected, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @REG_P(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @break_out_memory_refs(i64 %35)
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %34, %30, %27
  %38 = load i32, i32* %4, align 4
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @memory_address_p(i32 %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %124

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @memory_address_p(i32 %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %122

49:                                               ; preds = %43
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @win, align 4
  %54 = call i32 @LEGITIMIZE_ADDRESS(i64 %50, i64 %51, i32 %52, i32 %53)
  %55 = load i64, i64* %5, align 8
  %56 = call i64 @GET_CODE(i64 %55)
  %57 = load i64, i64* @PLUS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %94

59:                                               ; preds = %49
  %60 = load i64, i64* @const0_rtx, align 8
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i64 @eliminate_constant_term(i64 %61, i64* %7)
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @const0_rtx, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %4, align 4
  %68 = load i64, i64* %8, align 8
  %69 = call i64 @memory_address_p(i32 %67, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %59
  %72 = load i64, i64* %5, align 8
  %73 = load i32, i32* @NULL_RTX, align 4
  %74 = call i64 @force_operand(i64 %72, i32 %73)
  store i64 %74, i64* %5, align 8
  br label %93

75:                                               ; preds = %66
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @GET_MODE(i64 %76)
  %78 = load i64, i64* %8, align 8
  %79 = call i64 @copy_to_reg(i64 %78)
  %80 = load i64, i64* %7, align 8
  %81 = call i64 @gen_rtx_PLUS(i32 %77, i64 %79, i64 %80)
  store i64 %81, i64* %8, align 8
  %82 = load i32, i32* %4, align 4
  %83 = load i64, i64* %8, align 8
  %84 = call i64 @memory_address_p(i32 %82, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %75
  %87 = load i64, i64* %5, align 8
  %88 = load i32, i32* @NULL_RTX, align 4
  %89 = call i64 @force_operand(i64 %87, i32 %88)
  store i64 %89, i64* %5, align 8
  br label %92

90:                                               ; preds = %75
  %91 = load i64, i64* %8, align 8
  store i64 %91, i64* %5, align 8
  br label %92

92:                                               ; preds = %90, %86
  br label %93

93:                                               ; preds = %92, %71
  br label %121

94:                                               ; preds = %49
  %95 = load i64, i64* %5, align 8
  %96 = call i64 @GET_CODE(i64 %95)
  %97 = load i64, i64* @MULT, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load i64, i64* %5, align 8
  %101 = call i64 @GET_CODE(i64 %100)
  %102 = load i64, i64* @MINUS, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %99, %94
  %105 = load i64, i64* %5, align 8
  %106 = load i32, i32* @NULL_RTX, align 4
  %107 = call i64 @force_operand(i64 %105, i32 %106)
  store i64 %107, i64* %5, align 8
  br label %120

108:                                              ; preds = %99
  %109 = load i64, i64* %5, align 8
  %110 = call i64 @REG_P(i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i64, i64* %5, align 8
  %114 = call i64 @copy_to_reg(i64 %113)
  store i64 %114, i64* %5, align 8
  br label %119

115:                                              ; preds = %108
  %116 = load i32, i32* @Pmode, align 4
  %117 = load i64, i64* %5, align 8
  %118 = call i64 @force_reg(i32 %116, i64 %117)
  store i64 %118, i64* %5, align 8
  br label %119

119:                                              ; preds = %115, %112
  br label %120

120:                                              ; preds = %119, %104
  br label %121

121:                                              ; preds = %120, %93
  br label %143

122:                                              ; preds = %48
  %123 = load i64, i64* %6, align 8
  store i64 %123, i64* %5, align 8
  br label %124

124:                                              ; preds = %122, %42
  %125 = load i64, i64* @flag_force_addr, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %124
  %128 = load i32, i32* @cse_not_expected, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %141, label %130

130:                                              ; preds = %127
  %131 = load i64, i64* %5, align 8
  %132 = call i64 @REG_P(i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %130
  %135 = load i64, i64* %5, align 8
  %136 = load i32, i32* @NULL_RTX, align 4
  %137 = call i64 @force_operand(i64 %135, i32 %136)
  store i64 %137, i64* %5, align 8
  %138 = load i32, i32* @Pmode, align 4
  %139 = load i64, i64* %5, align 8
  %140 = call i64 @force_reg(i32 %138, i64 %139)
  store i64 %140, i64* %5, align 8
  br label %141

141:                                              ; preds = %134, %130, %127, %124
  br label %142

142:                                              ; preds = %141, %23
  br label %143

143:                                              ; preds = %142, %121
  %144 = load i64, i64* %6, align 8
  %145 = load i64, i64* %5, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = load i64, i64* %5, align 8
  store i64 %148, i64* %3, align 8
  br label %185

149:                                              ; preds = %143
  %150 = load i64, i64* %5, align 8
  %151 = call i64 @REG_P(i64 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i64, i64* %5, align 8
  %155 = load i32, i32* @BITS_PER_UNIT, align 4
  %156 = call i32 @mark_reg_pointer(i64 %154, i32 %155)
  br label %179

157:                                              ; preds = %149
  %158 = load i64, i64* %5, align 8
  %159 = call i64 @GET_CODE(i64 %158)
  %160 = load i64, i64* @PLUS, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %178

162:                                              ; preds = %157
  %163 = load i64, i64* %5, align 8
  %164 = call i64 @XEXP(i64 %163, i32 0)
  %165 = call i64 @REG_P(i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %162
  %168 = load i64, i64* %5, align 8
  %169 = call i64 @XEXP(i64 %168, i32 1)
  %170 = call i64 @GET_CODE(i64 %169)
  %171 = load i64, i64* @CONST_INT, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %167
  %174 = load i64, i64* %5, align 8
  %175 = call i64 @XEXP(i64 %174, i32 0)
  %176 = load i32, i32* @BITS_PER_UNIT, align 4
  %177 = call i32 @mark_reg_pointer(i64 %175, i32 %176)
  br label %178

178:                                              ; preds = %173, %167, %162, %157
  br label %179

179:                                              ; preds = %178, %153
  br label %180

180:                                              ; preds = %179
  %181 = load i64, i64* %6, align 8
  %182 = load i64, i64* %5, align 8
  %183 = call i32 @update_temp_slot_address(i64 %181, i64 %182)
  %184 = load i64, i64* %5, align 8
  store i64 %184, i64* %3, align 8
  br label %185

185:                                              ; preds = %180, %147
  %186 = load i64, i64* %3, align 8
  ret i64 %186
}

declare dso_local i64 @convert_memory_address(i32, i64) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i64 @CONSTANT_ADDRESS_P(i64) #1

declare dso_local i64 @force_reg(i32, i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @break_out_memory_refs(i64) #1

declare dso_local i64 @memory_address_p(i32, i64) #1

declare dso_local i32 @LEGITIMIZE_ADDRESS(i64, i64, i32, i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @eliminate_constant_term(i64, i64*) #1

declare dso_local i64 @force_operand(i64, i32) #1

declare dso_local i64 @gen_rtx_PLUS(i32, i64, i64) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @copy_to_reg(i64) #1

declare dso_local i32 @mark_reg_pointer(i64, i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @update_temp_slot_address(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
