; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_emit_frame_save.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_emit_frame_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_ALTIVEC_ABI = common dso_local global i64 0, align 8
@TARGET_E500_DOUBLE = common dso_local global i64 0, align 8
@DFmode = common dso_local global i32 0, align 4
@TARGET_SPE_ABI = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32)* @emit_frame_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_frame_save(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @GEN_INT(i32 %21)
  store i32 %22, i32* %18, align 4
  %23 = load i64, i64* @TARGET_ALTIVEC_ABI, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %6
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @ALTIVEC_VECTOR_MODE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %25, %6
  %30 = load i64, i64* @TARGET_E500_DOUBLE, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @DFmode, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %47, label %36

36:                                               ; preds = %32, %29
  %37 = load i64, i64* @TARGET_SPE_ABI, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @SPE_VECTOR_MODE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @SPE_CONST_OFFSET_OK(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %43, %32, %25
  %48 = load i32, i32* @Pmode, align 4
  %49 = call i32 @gen_rtx_REG(i32 %48, i32 11)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %18, align 4
  %52 = call i32 @emit_move_insn(i32 %50, i32 %51)
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %18, align 4
  store i32 %54, i32* %20, align 4
  br label %59

55:                                               ; preds = %43, %39, %36
  %56 = load i32, i32* %18, align 4
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* @NULL_RTX, align 4
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* @NULL_RTX, align 4
  store i32 %58, i32* %20, align 4
  br label %59

59:                                               ; preds = %55, %47
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @gen_rtx_REG(i32 %60, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* @Pmode, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @gen_rtx_PLUS(i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %17, align 4
  %69 = call i32 @gen_frame_mem(i32 %67, i32 %68)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @emit_move_insn(i32 %70, i32 %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* %20, align 4
  %78 = call i32 @rs6000_frame_related(i32 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  ret void
}

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i64 @ALTIVEC_VECTOR_MODE(i32) #1

declare dso_local i64 @SPE_VECTOR_MODE(i32) #1

declare dso_local i32 @SPE_CONST_OFFSET_OK(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_rtx_PLUS(i32, i32, i32) #1

declare dso_local i32 @gen_frame_mem(i32, i32) #1

declare dso_local i32 @rs6000_frame_related(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
