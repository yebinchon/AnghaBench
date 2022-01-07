; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_expand_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_expand_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reload_in_progress = common dso_local global i32 0, align 4
@reload_completed = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@ptr_mode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@CONST = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i32 0, align 4
@no_new_pseudos = common dso_local global i64 0, align 8
@OPTAB_DIRECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia64_expand_move(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @GET_MODE(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @reload_in_progress, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* @reload_completed, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ia64_move_ok(i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @force_reg(i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %20, %17, %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @Pmode, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @ptr_mode, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %160

37:                                               ; preds = %33, %29
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @VOIDmode, align 4
  %40 = call i64 @symbolic_operand(i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %160

42:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @GET_CODE(i32 %44)
  %46 = load i64, i64* @CONST, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %42
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @XEXP(i32 %49, i32 0)
  %51 = call i64 @GET_CODE(i32 %50)
  %52 = load i64, i64* @PLUS, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %48
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @XEXP(i32 %55, i32 0)
  %57 = call i32 @XEXP(i32 %56, i32 1)
  %58 = call i64 @GET_CODE(i32 %57)
  %59 = load i64, i64* @CONST_INT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @XEXP(i32 %62, i32 0)
  %64 = call i32 @XEXP(i32 %63, i32 1)
  %65 = call i32 @INTVAL(i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @XEXP(i32 %66, i32 0)
  %68 = call i32 @XEXP(i32 %67, i32 0)
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %61, %54, %48, %42
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @tls_symbolic_operand_type(i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @ia64_expand_tls_address(i32 %75, i32 %76, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %3, align 4
  br label %162

81:                                               ; preds = %69
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i64 @any_offset_symbol_operand(i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 0, i32* %7, align 4
  br label %112

87:                                               ; preds = %81
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i64 @aligned_offset_symbol_operand(i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %87
  %93 = load i32, i32* %7, align 4
  %94 = and i32 %93, 16383
  %95 = xor i32 %94, 8192
  %96 = sub nsw i32 %95, 8192
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %97, %98
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %92
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @plus_constant(i32 %103, i32 %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %7, align 4
  br label %108

107:                                              ; preds = %92
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %107, %102
  br label %111

109:                                              ; preds = %87
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %109, %108
  br label %112

112:                                              ; preds = %111, %86
  %113 = load i64, i64* @reload_completed, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %112
  %116 = load i32, i32* %7, align 4
  %117 = icmp eq i32 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @gcc_assert(i32 %118)
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i64 @ia64_expand_load_address(i32 %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %115
  %125 = load i32, i32* @NULL_RTX, align 4
  store i32 %125, i32* %3, align 4
  br label %162

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %126, %112
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %159

130:                                              ; preds = %127
  %131 = load i64, i64* @no_new_pseudos, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32, i32* %4, align 4
  br label %138

135:                                              ; preds = %130
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @gen_reg_rtx(i32 %136)
  br label %138

138:                                              ; preds = %135, %133
  %139 = phi i32 [ %134, %133 ], [ %137, %135 ]
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* @VOIDmode, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @gen_rtx_SET(i32 %140, i32 %141, i32 %142)
  %144 = call i32 @emit_insn(i32 %143)
  %145 = load i32, i32* %6, align 4
  %146 = load i64, i64* @PLUS, align 8
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @GEN_INT(i32 %148)
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @OPTAB_DIRECT, align 4
  %152 = call i32 @expand_simple_binop(i32 %145, i64 %146, i32 %147, i32 %149, i32 %150, i32 1, i32 %151)
  store i32 %152, i32* %5, align 4
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* %5, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %138
  %157 = load i32, i32* @NULL_RTX, align 4
  store i32 %157, i32* %3, align 4
  br label %162

158:                                              ; preds = %138
  br label %159

159:                                              ; preds = %158, %127
  br label %160

160:                                              ; preds = %159, %37, %33
  %161 = load i32, i32* %5, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %160, %156, %124, %74
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @ia64_move_ok(i32, i32) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i64 @symbolic_operand(i32, i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @tls_symbolic_operand_type(i32) #1

declare dso_local i32 @ia64_expand_tls_address(i32, i32, i32, i32, i32) #1

declare dso_local i64 @any_offset_symbol_operand(i32, i32) #1

declare dso_local i64 @aligned_offset_symbol_operand(i32, i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @ia64_expand_load_address(i32, i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @expand_simple_binop(i32, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
