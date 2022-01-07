; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_expand_unaligned_store.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_expand_unaligned_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODE_INT = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_expand_unaligned_store(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @mips_get_unaligned_mem(i32* %6, i32 %13, i32 %14, i32* %10, i32* %11)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %55

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @MODE_INT, align 4
  %21 = call i32 @mode_for_size(i32 %19, i32 %20, i32 0)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @gen_lowpart(i32 %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @DImode, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @gen_mov_sdl(i32 %29, i32 %30, i32 %31)
  %33 = call i32 @emit_insn(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @copy_rtx(i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @copy_rtx(i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @gen_mov_sdr(i32 %35, i32 %37, i32 %38)
  %40 = call i32 @emit_insn(i32 %39)
  br label %54

41:                                               ; preds = %18
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @gen_mov_swl(i32 %42, i32 %43, i32 %44)
  %46 = call i32 @emit_insn(i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @copy_rtx(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @copy_rtx(i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @gen_mov_swr(i32 %48, i32 %50, i32 %51)
  %53 = call i32 @emit_insn(i32 %52)
  br label %54

54:                                               ; preds = %41, %28
  store i32 1, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %17
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @mips_get_unaligned_mem(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @mode_for_size(i32, i32, i32) #1

declare dso_local i32 @gen_lowpart(i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_mov_sdl(i32, i32, i32) #1

declare dso_local i32 @gen_mov_sdr(i32, i32, i32) #1

declare dso_local i32 @copy_rtx(i32) #1

declare dso_local i32 @gen_mov_swl(i32, i32, i32) #1

declare dso_local i32 @gen_mov_swr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
