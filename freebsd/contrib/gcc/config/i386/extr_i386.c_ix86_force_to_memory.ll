; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_force_to_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_force_to_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reload_completed = common dso_local global i32 0, align 4
@TARGET_RED_ZONE = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@stack_pointer_rtx = common dso_local global i32 0, align 4
@RED_ZONE_SIZE = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_force_to_memory(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @reload_completed, align 4
  %8 = call i32 @gcc_assert(i32 %7)
  %9 = load i64, i64* @TARGET_RED_ZONE, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @Pmode, align 4
  %14 = load i32, i32* @stack_pointer_rtx, align 4
  %15 = load i32, i32* @RED_ZONE_SIZE, align 4
  %16 = sub nsw i32 0, %15
  %17 = call i32 @GEN_INT(i32 %16)
  %18 = call i32 @gen_rtx_PLUS(i32 %13, i32 %14, i32 %17)
  %19 = call i32 @gen_rtx_MEM(i32 %12, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @emit_move_insn(i32 %20, i32 %21)
  br label %93

23:                                               ; preds = %2
  %24 = load i64, i64* @TARGET_RED_ZONE, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %48, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* @TARGET_64BIT, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  switch i32 %30, label %42 [
    i32 129, label %31
    i32 128, label %31
    i32 130, label %34
  ]

31:                                               ; preds = %29, %29
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @gen_lowpart(i32 130, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %31
  %35 = load i32, i32* @VOIDmode, align 4
  %36 = load i32, i32* @stack_pointer_rtx, align 4
  %37 = call i32 @gen_rtx_PRE_DEC(i32 130, i32 %36)
  %38 = call i32 @gen_rtx_MEM(i32 130, i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @gen_rtx_SET(i32 %35, i32 %38, i32 %39)
  %41 = call i32 @emit_insn(i32 %40)
  br label %44

42:                                               ; preds = %29
  %43 = call i32 (...) @gcc_unreachable()
  br label %44

44:                                               ; preds = %42, %34
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @stack_pointer_rtx, align 4
  %47 = call i32 @gen_rtx_MEM(i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %92

48:                                               ; preds = %26, %23
  %49 = load i32, i32* %3, align 4
  switch i32 %49, label %86 [
    i32 130, label %50
    i32 129, label %73
    i32 128, label %76
  ]

50:                                               ; preds = %48
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = call i32 @split_di(i32* %4, i32 1, i32* %51, i32* %53)
  %55 = load i32, i32* @VOIDmode, align 4
  %56 = load i32, i32* @Pmode, align 4
  %57 = load i32, i32* @stack_pointer_rtx, align 4
  %58 = call i32 @gen_rtx_PRE_DEC(i32 %56, i32 %57)
  %59 = call i32 @gen_rtx_MEM(i32 128, i32 %58)
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @gen_rtx_SET(i32 %55, i32 %59, i32 %61)
  %63 = call i32 @emit_insn(i32 %62)
  %64 = load i32, i32* @VOIDmode, align 4
  %65 = load i32, i32* @Pmode, align 4
  %66 = load i32, i32* @stack_pointer_rtx, align 4
  %67 = call i32 @gen_rtx_PRE_DEC(i32 %65, i32 %66)
  %68 = call i32 @gen_rtx_MEM(i32 128, i32 %67)
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @gen_rtx_SET(i32 %64, i32 %68, i32 %70)
  %72 = call i32 @emit_insn(i32 %71)
  br label %88

73:                                               ; preds = %48
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @gen_lowpart(i32 128, i32 %74)
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %48, %73
  %77 = load i32, i32* @VOIDmode, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @GET_MODE(i32 %78)
  %80 = load i32, i32* @stack_pointer_rtx, align 4
  %81 = call i32 @gen_rtx_PRE_DEC(i32 128, i32 %80)
  %82 = call i32 @gen_rtx_MEM(i32 %79, i32 %81)
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @gen_rtx_SET(i32 %77, i32 %82, i32 %83)
  %85 = call i32 @emit_insn(i32 %84)
  br label %88

86:                                               ; preds = %48
  %87 = call i32 (...) @gcc_unreachable()
  br label %88

88:                                               ; preds = %86, %76, %50
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @stack_pointer_rtx, align 4
  %91 = call i32 @gen_rtx_MEM(i32 %89, i32 %90)
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %88, %44
  br label %93

93:                                               ; preds = %92, %11
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @gen_rtx_PLUS(i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_lowpart(i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_PRE_DEC(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @split_di(i32*, i32, i32*, i32*) #1

declare dso_local i32 @GET_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
