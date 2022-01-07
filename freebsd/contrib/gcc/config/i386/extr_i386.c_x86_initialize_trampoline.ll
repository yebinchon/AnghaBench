; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_x86_initialize_trampoline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_x86_initialize_trampoline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_64BIT = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@sub_optab = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@OPTAB_DIRECT = common dso_local global i32 0, align 4
@QImode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@HImode = common dso_local global i32 0, align 4
@TRAMPOLINE_SIZE = common dso_local global i32 0, align 4
@LCT_NORMAL = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x86_initialize_trampoline(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @TARGET_64BIT, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %45, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @SImode, align 4
  %13 = load i32, i32* @sub_optab, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @plus_constant(i32 %15, i32 10)
  %17 = load i32, i32* @NULL_RTX, align 4
  %18 = load i32, i32* @OPTAB_DIRECT, align 4
  %19 = call i32 @expand_binop(i32 %12, i32 %13, i32 %14, i32 %16, i32 %17, i32 1, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @QImode, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @gen_rtx_MEM(i32 %20, i32 %21)
  %23 = load i32, i32* @QImode, align 4
  %24 = call i32 @gen_int_mode(i32 185, i32 %23)
  %25 = call i32 @emit_move_insn(i32 %22, i32 %24)
  %26 = load i32, i32* @SImode, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @plus_constant(i32 %27, i32 1)
  %29 = call i32 @gen_rtx_MEM(i32 %26, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @emit_move_insn(i32 %29, i32 %30)
  %32 = load i32, i32* @QImode, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @plus_constant(i32 %33, i32 5)
  %35 = call i32 @gen_rtx_MEM(i32 %32, i32 %34)
  %36 = load i32, i32* @QImode, align 4
  %37 = call i32 @gen_int_mode(i32 233, i32 %36)
  %38 = call i32 @emit_move_insn(i32 %35, i32 %37)
  %39 = load i32, i32* @SImode, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @plus_constant(i32 %40, i32 6)
  %42 = call i32 @gen_rtx_MEM(i32 %39, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @emit_move_insn(i32 %42, i32 %43)
  br label %136

45:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @VOIDmode, align 4
  %48 = call i64 @x86_64_zext_immediate_operand(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %45
  %51 = load i32, i32* @DImode, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @copy_to_mode_reg(i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @HImode, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @plus_constant(i32 %55, i32 %56)
  %58 = call i32 @gen_rtx_MEM(i32 %54, i32 %57)
  %59 = load i32, i32* @HImode, align 4
  %60 = call i32 @gen_int_mode(i32 47937, i32 %59)
  %61 = call i32 @emit_move_insn(i32 %58, i32 %60)
  %62 = load i32, i32* @SImode, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 2
  %66 = call i32 @plus_constant(i32 %63, i32 %65)
  %67 = call i32 @gen_rtx_MEM(i32 %62, i32 %66)
  %68 = load i32, i32* @SImode, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @gen_lowpart(i32 %68, i32 %69)
  %71 = call i32 @emit_move_insn(i32 %67, i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 6
  store i32 %73, i32* %8, align 4
  br label %93

74:                                               ; preds = %45
  %75 = load i32, i32* @HImode, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @plus_constant(i32 %76, i32 %77)
  %79 = call i32 @gen_rtx_MEM(i32 %75, i32 %78)
  %80 = load i32, i32* @HImode, align 4
  %81 = call i32 @gen_int_mode(i32 47945, i32 %80)
  %82 = call i32 @emit_move_insn(i32 %79, i32 %81)
  %83 = load i32, i32* @DImode, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 2
  %87 = call i32 @plus_constant(i32 %84, i32 %86)
  %88 = call i32 @gen_rtx_MEM(i32 %83, i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @emit_move_insn(i32 %88, i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 10
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %74, %50
  %94 = load i32, i32* @HImode, align 4
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @plus_constant(i32 %95, i32 %96)
  %98 = call i32 @gen_rtx_MEM(i32 %94, i32 %97)
  %99 = load i32, i32* @HImode, align 4
  %100 = call i32 @gen_int_mode(i32 47689, i32 %99)
  %101 = call i32 @emit_move_insn(i32 %98, i32 %100)
  %102 = load i32, i32* @DImode, align 4
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 2
  %106 = call i32 @plus_constant(i32 %103, i32 %105)
  %107 = call i32 @gen_rtx_MEM(i32 %102, i32 %106)
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @emit_move_insn(i32 %107, i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 10
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* @HImode, align 4
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @plus_constant(i32 %113, i32 %114)
  %116 = call i32 @gen_rtx_MEM(i32 %112, i32 %115)
  %117 = load i32, i32* @HImode, align 4
  %118 = call i32 @gen_int_mode(i32 65353, i32 %117)
  %119 = call i32 @emit_move_insn(i32 %116, i32 %118)
  %120 = load i32, i32* @QImode, align 4
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 2
  %124 = call i32 @plus_constant(i32 %121, i32 %123)
  %125 = call i32 @gen_rtx_MEM(i32 %120, i32 %124)
  %126 = load i32, i32* @QImode, align 4
  %127 = call i32 @gen_int_mode(i32 227, i32 %126)
  %128 = call i32 @emit_move_insn(i32 %125, i32 %127)
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 3
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @TRAMPOLINE_SIZE, align 4
  %133 = icmp sle i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @gcc_assert(i32 %134)
  br label %136

136:                                              ; preds = %93, %11
  ret void
}

declare dso_local i32 @expand_binop(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @gen_int_mode(i32, i32) #1

declare dso_local i64 @x86_64_zext_immediate_operand(i32, i32) #1

declare dso_local i32 @copy_to_mode_reg(i32, i32) #1

declare dso_local i32 @gen_lowpart(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
