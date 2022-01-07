; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_split_lock_test_and_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_split_lock_test_and_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCmode = common dso_local global i32 0, align 4
@CR0_REGNO = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs6000_split_lock_test_and_set(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @GET_MODE(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @CCmode, align 4
  %16 = load i32, i32* @CR0_REGNO, align 4
  %17 = call i32 @gen_rtx_REG(i32 %15, i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = call i32 (...) @gen_memory_barrier()
  %19 = call i32 @emit_insn(i32 %18)
  %20 = load i32, i32* @VOIDmode, align 4
  %21 = call i32 (...) @gen_label_rtx()
  %22 = call i32 @gen_rtx_LABEL_REF(i32 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @XEXP(i32 %23, i32 0)
  %25 = call i32 @emit_label(i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @emit_load_locked(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @emit_move_insn(i32 %30, i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @emit_store_conditional(i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* @VOIDmode, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @const0_rtx, align 4
  %41 = call i32 @gen_rtx_NE(i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @emit_unlikely_jump(i32 %42, i32 %43)
  %45 = call i32 (...) @gen_isync()
  %46 = call i32 @emit_insn(i32 %45)
  ret void
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_memory_barrier(...) #1

declare dso_local i32 @gen_rtx_LABEL_REF(i32, i32) #1

declare dso_local i32 @gen_label_rtx(...) #1

declare dso_local i32 @emit_label(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @emit_load_locked(i32, i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @emit_store_conditional(i32, i32, i32, i32) #1

declare dso_local i32 @gen_rtx_NE(i32, i32, i32) #1

declare dso_local i32 @emit_unlikely_jump(i32, i32) #1

declare dso_local i32 @gen_isync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
