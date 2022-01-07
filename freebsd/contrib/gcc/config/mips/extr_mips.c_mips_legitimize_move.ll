; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_legitimize_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_legitimize_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNITS_PER_WORD = common dso_local global i32 0, align 4
@HI_REGNUM = common dso_local global i32 0, align 4
@LO_REGNUM = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@REG_EQUAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_legitimize_move(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @register_operand(i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @reg_or_0_operand(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @force_reg(i32 %20, i32 %21)
  %23 = call i32 @emit_move_insn(i32 %19, i32 %22)
  store i32 1, i32* %4, align 4
  br label %110

24:                                               ; preds = %13, %3
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @GET_MODE_SIZE(i32 %25)
  %27 = load i32, i32* @UNITS_PER_WORD, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %90

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @REG_P(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %90

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @REGNO(i32 %34)
  %36 = call i64 @MD_REG_P(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %90

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @REG_P(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %90

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @REGNO(i32 %43)
  %45 = call i64 @GP_REG_P(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %90

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @REGNO(i32 %48)
  %50 = load i32, i32* @HI_REGNUM, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @LO_REGNUM, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @HI_REGNUM, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @GET_MODE_SIZE(i32 %58)
  %60 = icmp sle i32 %59, 4
  br i1 %60, label %61, label %75

61:                                               ; preds = %56
  %62 = load i32, i32* @SImode, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @REGNO(i32 %63)
  %65 = call i32 @gen_rtx_REG(i32 %62, i32 %64)
  %66 = load i32, i32* @SImode, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @REGNO(i32 %67)
  %69 = call i32 @gen_rtx_REG(i32 %66, i32 %68)
  %70 = load i32, i32* @SImode, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @gen_rtx_REG(i32 %70, i32 %71)
  %73 = call i32 @gen_mfhilo_si(i32 %65, i32 %69, i32 %72)
  %74 = call i32 @emit_insn(i32 %73)
  br label %89

75:                                               ; preds = %56
  %76 = load i32, i32* @DImode, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @REGNO(i32 %77)
  %79 = call i32 @gen_rtx_REG(i32 %76, i32 %78)
  %80 = load i32, i32* @DImode, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @REGNO(i32 %81)
  %83 = call i32 @gen_rtx_REG(i32 %80, i32 %82)
  %84 = load i32, i32* @DImode, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @gen_rtx_REG(i32 %84, i32 %85)
  %87 = call i32 @gen_mfhilo_di(i32 %79, i32 %83, i32 %86)
  %88 = call i32 @emit_insn(i32 %87)
  br label %89

89:                                               ; preds = %75, %61
  store i32 1, i32* %4, align 4
  br label %110

90:                                               ; preds = %42, %38, %33, %29, %24
  %91 = load i32, i32* %7, align 4
  %92 = call i64 @CONSTANT_P(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @move_operand(i32 %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @mips_legitimize_const_move(i32 %100, i32 %101, i32 %102)
  %104 = call i32 (...) @get_last_insn()
  %105 = load i32, i32* @REG_EQUAL, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @copy_rtx(i32 %106)
  %108 = call i32 @set_unique_reg_note(i32 %104, i32 %105, i32 %107)
  store i32 1, i32* %4, align 4
  br label %110

109:                                              ; preds = %94, %90
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %99, %89, %18
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @register_operand(i32, i32) #1

declare dso_local i32 @reg_or_0_operand(i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @MD_REG_P(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @GP_REG_P(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_mfhilo_si(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @gen_mfhilo_di(i32, i32, i32) #1

declare dso_local i64 @CONSTANT_P(i32) #1

declare dso_local i32 @move_operand(i32, i32) #1

declare dso_local i32 @mips_legitimize_const_move(i32, i32, i32) #1

declare dso_local i32 @set_unique_reg_note(i32, i32, i32) #1

declare dso_local i32 @get_last_insn(...) #1

declare dso_local i32 @copy_rtx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
