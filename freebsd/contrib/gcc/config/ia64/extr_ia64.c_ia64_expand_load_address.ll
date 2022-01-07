; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_expand_load_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_expand_load_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG = common dso_local global i64 0, align 8
@Pmode = common dso_local global i64 0, align 8
@TARGET_NO_PIC = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@TARGET_AUTO_PIC = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@CONST = common dso_local global i64 0, align 8
@pic_offset_table_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia64_expand_load_address(i32 %0, i32 %1) #0 {
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
  %11 = call i64 @GET_CODE(i32 %10)
  %12 = load i64, i64* @REG, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @gcc_assert(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @GET_MODE(i32 %16)
  %18 = load i64, i64* @Pmode, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i64, i64* @Pmode, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @REGNO(i32 %23)
  %25 = call i32 @gen_rtx_REG_offset(i32 %21, i64 %22, i32 %24, i32 0)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %20, %2
  %27 = load i64, i64* @TARGET_NO_PIC, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %134

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @VOIDmode, align 4
  %33 = call i64 @small_addr_symbolic_operand(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %134

36:                                               ; preds = %30
  %37 = load i64, i64* @TARGET_AUTO_PIC, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @gen_load_gprel64(i32 %40, i32 %41)
  %43 = call i32 @emit_insn(i32 %42)
  br label %133

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @GET_CODE(i32 %45)
  %47 = load i64, i64* @SYMBOL_REF, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @SYMBOL_REF_FUNCTION_P(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @gen_load_fptr(i32 %54, i32 %55)
  %57 = call i32 @emit_insn(i32 %56)
  br label %132

58:                                               ; preds = %49, %44
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @VOIDmode, align 4
  %61 = call i64 @sdata_symbolic_operand(i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @gen_load_gprel(i32 %64, i32 %65)
  %67 = call i32 @emit_insn(i32 %66)
  br label %131

68:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i64 @GET_CODE(i32 %69)
  %71 = load i64, i64* @CONST, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @XEXP(i32 %74, i32 0)
  %76 = call i32 @XEXP(i32 %75, i32 1)
  %77 = call i32 @INTVAL(i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, 16383
  %80 = xor i32 %79, 8192
  %81 = sub nsw i32 %80, 8192
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %73
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @XEXP(i32 %89, i32 0)
  %91 = call i32 @XEXP(i32 %90, i32 0)
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @plus_constant(i32 %91, i32 %92)
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %87, %73
  br label %95

95:                                               ; preds = %94, %68
  %96 = load i64, i64* @Pmode, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @gen_rtx_HIGH(i64 %96, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i64, i64* @Pmode, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @pic_offset_table_rtx, align 4
  %102 = call i32 @gen_rtx_PLUS(i64 %99, i32 %100, i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* @VOIDmode, align 4
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @gen_rtx_SET(i32 %103, i32 %104, i32 %105)
  %107 = call i32 @emit_insn(i32 %106)
  %108 = load i64, i64* @Pmode, align 8
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @gen_rtx_LO_SUM(i64 %108, i32 %109, i32 %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* @VOIDmode, align 4
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @gen_rtx_SET(i32 %112, i32 %113, i32 %114)
  %116 = call i32 @emit_insn(i32 %115)
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %95
  %120 = load i64, i64* @Pmode, align 8
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @GEN_INT(i32 %122)
  %124 = call i32 @gen_rtx_PLUS(i64 %120, i32 %121, i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* @VOIDmode, align 4
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @gen_rtx_SET(i32 %125, i32 %126, i32 %127)
  %129 = call i32 @emit_insn(i32 %128)
  br label %130

130:                                              ; preds = %119, %95
  br label %131

131:                                              ; preds = %130, %63
  br label %132

132:                                              ; preds = %131, %53
  br label %133

133:                                              ; preds = %132, %39
  store i32 1, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %35, %29
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @gen_rtx_REG_offset(i32, i64, i32, i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @small_addr_symbolic_operand(i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_load_gprel64(i32, i32) #1

declare dso_local i64 @SYMBOL_REF_FUNCTION_P(i32) #1

declare dso_local i32 @gen_load_fptr(i32, i32) #1

declare dso_local i64 @sdata_symbolic_operand(i32, i32) #1

declare dso_local i32 @gen_load_gprel(i32, i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i32 @gen_rtx_HIGH(i64, i32) #1

declare dso_local i32 @gen_rtx_PLUS(i64, i32, i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_LO_SUM(i64, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
