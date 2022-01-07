; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_aix_emit_builtin_unwind_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_aix_emit_builtin_unwind_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Pmode = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@hard_frame_pointer_rtx = common dso_local global i32 0, align 4
@TARGET_32BIT = common dso_local global i64 0, align 8
@EQ = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs6000_aix_emit_builtin_unwind_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @Pmode, align 4
  %8 = call i32 @gen_reg_rtx(i32 %7)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* @Pmode, align 4
  %10 = call i32 @gen_reg_rtx(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @SImode, align 4
  %12 = call i32 @gen_reg_rtx(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @SImode, align 4
  %14 = call i32 @gen_reg_rtx(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = call i32 (...) @gen_label_rtx()
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @Pmode, align 4
  %17 = load i32, i32* @hard_frame_pointer_rtx, align 4
  %18 = call i32 @gen_frame_mem(i32 %16, i32 %17)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @emit_move_insn(i32 %19, i32 %20)
  %22 = load i32, i32* @Pmode, align 4
  %23 = load i32, i32* @Pmode, align 4
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @Pmode, align 4
  %26 = call i32 @GET_MODE_SIZE(i32 %25)
  %27 = mul nsw i32 2, %26
  %28 = call i32 @GEN_INT(i32 %27)
  %29 = call i32 @gen_rtx_PLUS(i32 %23, i32 %24, i32 %28)
  %30 = call i32 @gen_frame_mem(i32 %22, i32 %29)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @emit_move_insn(i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @SImode, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @gen_rtx_MEM(i32 %35, i32 %36)
  %38 = call i32 @emit_move_insn(i32 %34, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i64, i64* @TARGET_32BIT, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 -2143223788, i32 -398393304
  %44 = load i32, i32* @SImode, align 4
  %45 = call i32 @gen_int_mode(i32 %43, i32 %44)
  %46 = call i32 @emit_move_insn(i32 %39, i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @EQ, align 4
  %50 = load i32, i32* @SImode, align 4
  %51 = load i32, i32* @NULL_RTX, align 4
  %52 = load i32, i32* @NULL_RTX, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @do_compare_rtx_and_jump(i32 %47, i32 %48, i32 %49, i32 1, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* @Pmode, align 4
  %56 = load i32, i32* @Pmode, align 4
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @Pmode, align 4
  %59 = call i32 @GET_MODE_SIZE(i32 %58)
  %60 = mul nsw i32 5, %59
  %61 = call i32 @GEN_INT(i32 %60)
  %62 = call i32 @gen_rtx_PLUS(i32 %56, i32 %57, i32 %61)
  %63 = call i32 @gen_frame_mem(i32 %55, i32 %62)
  store i32 %63, i32* %1, align 4
  %64 = load i32, i32* %1, align 4
  %65 = load i32, i32* @Pmode, align 4
  %66 = call i32 @gen_rtx_REG(i32 %65, i32 2)
  %67 = call i32 @emit_move_insn(i32 %64, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @emit_label(i32 %68)
  ret void
}

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @gen_label_rtx(...) #1

declare dso_local i32 @gen_frame_mem(i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_rtx_PLUS(i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @gen_int_mode(i32, i32) #1

declare dso_local i32 @do_compare_rtx_and_jump(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @emit_label(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
