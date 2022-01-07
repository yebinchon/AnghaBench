; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_block_move_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_block_move_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_MOVE_BYTES = common dso_local global i32 0, align 4
@Pmode = common dso_local global i64 0, align 8
@PLUS = common dso_local global i32 0, align 4
@OPTAB_WIDEN = common dso_local global i32 0, align 4
@DImode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @mips_block_move_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_block_move_loop(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MAX_MOVE_BYTES, align 4
  %14 = srem i32 %12, %13
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MAX_MOVE_BYTES, align 4
  %20 = call i32 @mips_adjust_block_mem(i32 %18, i32 %19, i32* %8, i32* %5)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MAX_MOVE_BYTES, align 4
  %23 = call i32 @mips_adjust_block_mem(i32 %21, i32 %22, i32* %9, i32* %4)
  %24 = load i64, i64* @Pmode, align 8
  %25 = load i32, i32* @PLUS, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @GEN_INT(i32 %27)
  %29 = load i32, i32* @OPTAB_WIDEN, align 4
  %30 = call i32 @expand_simple_binop(i64 %24, i32 %25, i32 %26, i32 %28, i32 0, i32 0, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = call i32 (...) @gen_label_rtx()
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @emit_label(i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @MAX_MOVE_BYTES, align 4
  %37 = call i32 @mips_block_move_straight(i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @MAX_MOVE_BYTES, align 4
  %41 = call i32 @plus_constant(i32 %39, i32 %40)
  %42 = call i32 @emit_move_insn(i32 %38, i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @MAX_MOVE_BYTES, align 4
  %46 = call i32 @plus_constant(i32 %44, i32 %45)
  %47 = call i32 @emit_move_insn(i32 %43, i32 %46)
  %48 = load i64, i64* @Pmode, align 8
  %49 = load i64, i64* @DImode, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %3
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @gen_cmpdi(i32 %52, i32 %53)
  %55 = call i32 @emit_insn(i32 %54)
  br label %61

56:                                               ; preds = %3
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @gen_cmpsi(i32 %57, i32 %58)
  %60 = call i32 @emit_insn(i32 %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @gen_bne(i32 %62)
  %64 = call i32 @emit_jump_insn(i32 %63)
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @mips_block_move_straight(i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %61
  ret void
}

declare dso_local i32 @mips_adjust_block_mem(i32, i32, i32*, i32*) #1

declare dso_local i32 @expand_simple_binop(i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @gen_label_rtx(...) #1

declare dso_local i32 @emit_label(i32) #1

declare dso_local i32 @mips_block_move_straight(i32, i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_cmpdi(i32, i32) #1

declare dso_local i32 @gen_cmpsi(i32, i32) #1

declare dso_local i32 @emit_jump_insn(i32) #1

declare dso_local i32 @gen_bne(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
