; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_initialize_trampoline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_initialize_trampoline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_32BIT = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@DEFAULT_ABI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"__trampoline_setup\00", align 1
@FALSE = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs6000_initialize_trampoline(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* @TARGET_32BIT, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 4, i32 8
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @Pmode, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @force_reg(i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @DEFAULT_ABI, align 4
  switch i32 %18, label %19 [
    i32 130, label %21
    i32 129, label %68
    i32 128, label %68
  ]

19:                                               ; preds = %3
  %20 = call i32 (...) @gcc_unreachable()
  br label %21

21:                                               ; preds = %3, %19
  %22 = load i32, i32* @Pmode, align 4
  %23 = call i32 @gen_reg_rtx(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @Pmode, align 4
  %25 = call i32 @gen_reg_rtx(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @Pmode, align 4
  %28 = load i32, i32* @Pmode, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i32, i32, ...) bitcast (i32 (...)* @memory_address to i32 (i32, i32, ...)*)(i32 %28, i32 %29)
  %31 = call i32 (i32, i32, ...) bitcast (i32 (...)* @gen_rtx_MEM to i32 (i32, i32, ...)*)(i32 %27, i32 %30)
  %32 = call i32 @emit_move_insn(i32 %26, i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @Pmode, align 4
  %35 = load i32, i32* @Pmode, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i32, i32, ...) bitcast (i32 (...)* @plus_constant to i32 (i32, i32, ...)*)(i32 %36, i32 %37)
  %39 = call i32 (i32, i32, ...) bitcast (i32 (...)* @memory_address to i32 (i32, i32, ...)*)(i32 %35, i32 %38)
  %40 = call i32 (i32, i32, ...) bitcast (i32 (...)* @gen_rtx_MEM to i32 (i32, i32, ...)*)(i32 %34, i32 %39)
  %41 = call i32 @emit_move_insn(i32 %33, i32 %40)
  %42 = load i32, i32* @Pmode, align 4
  %43 = load i32, i32* @Pmode, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 (i32, i32, ...) bitcast (i32 (...)* @memory_address to i32 (i32, i32, ...)*)(i32 %43, i32 %44)
  %46 = call i32 (i32, i32, ...) bitcast (i32 (...)* @gen_rtx_MEM to i32 (i32, i32, ...)*)(i32 %42, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @emit_move_insn(i32 %46, i32 %47)
  %49 = load i32, i32* @Pmode, align 4
  %50 = load i32, i32* @Pmode, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i32, i32, ...) bitcast (i32 (...)* @plus_constant to i32 (i32, i32, ...)*)(i32 %51, i32 %52)
  %54 = call i32 (i32, i32, ...) bitcast (i32 (...)* @memory_address to i32 (i32, i32, ...)*)(i32 %50, i32 %53)
  %55 = call i32 (i32, i32, ...) bitcast (i32 (...)* @gen_rtx_MEM to i32 (i32, i32, ...)*)(i32 %49, i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @emit_move_insn(i32 %55, i32 %56)
  %58 = load i32, i32* @Pmode, align 4
  %59 = load i32, i32* @Pmode, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %7, align 4
  %62 = mul nsw i32 2, %61
  %63 = call i32 (i32, i32, ...) bitcast (i32 (...)* @plus_constant to i32 (i32, i32, ...)*)(i32 %60, i32 %62)
  %64 = call i32 (i32, i32, ...) bitcast (i32 (...)* @memory_address to i32 (i32, i32, ...)*)(i32 %59, i32 %63)
  %65 = call i32 (i32, i32, ...) bitcast (i32 (...)* @gen_rtx_MEM to i32 (i32, i32, ...)*)(i32 %58, i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @emit_move_insn(i32 %65, i32 %66)
  br label %83

68:                                               ; preds = %3, %3
  %69 = load i32, i32* @Pmode, align 4
  %70 = call i32 @gen_rtx_SYMBOL_REF(i32 %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @FALSE, align 4
  %72 = load i32, i32* @VOIDmode, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @Pmode, align 4
  %75 = call i32 (...) @rs6000_trampoline_size()
  %76 = call i32 @GEN_INT(i32 %75)
  %77 = load i32, i32* @SImode, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @Pmode, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @Pmode, align 4
  %82 = call i32 @emit_library_call(i32 %70, i32 %71, i32 %72, i32 4, i32 %73, i32 %74, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %68, %21
  ret void
}

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_rtx_MEM(...) #1

declare dso_local i32 @memory_address(...) #1

declare dso_local i32 @plus_constant(...) #1

declare dso_local i32 @emit_library_call(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gen_rtx_SYMBOL_REF(i32, i8*) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @rs6000_trampoline_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
