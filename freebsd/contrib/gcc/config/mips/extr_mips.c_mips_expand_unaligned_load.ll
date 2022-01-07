; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_expand_unaligned_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_expand_unaligned_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBREG = common dso_local global i64 0, align 8
@DImode = common dso_local global i64 0, align 8
@SImode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_expand_unaligned_load(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @GET_CODE(i32 %13)
  %15 = load i64, i64* @SUBREG, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @GET_MODE(i32 %18)
  %20 = load i64, i64* @DImode, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @SUBREG_BYTE(i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @SUBREG_REG(i32 %27)
  %29 = call i64 @GET_MODE(i32 %28)
  %30 = load i64, i64* @SImode, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @SUBREG_REG(i32 %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %26, %22, %17, %4
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @GET_MODE(i32 %36)
  %38 = call i32 @GET_MODE_BITSIZE(i64 %37)
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %83

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @mips_get_unaligned_mem(i32* %7, i32 %43, i32 %44, i32* %10, i32* %11)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %83

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @GET_MODE(i32 %49)
  %51 = call i32 @gen_reg_rtx(i64 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @GET_MODE(i32 %52)
  %54 = load i64, i64* @DImode, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %48
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @gen_mov_ldl(i32 %57, i32 %58, i32 %59)
  %61 = call i32 @emit_insn(i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @copy_rtx(i32 %63)
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @gen_mov_ldr(i32 %62, i32 %64, i32 %65, i32 %66)
  %68 = call i32 @emit_insn(i32 %67)
  br label %82

69:                                               ; preds = %48
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @gen_mov_lwl(i32 %70, i32 %71, i32 %72)
  %74 = call i32 @emit_insn(i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @copy_rtx(i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @gen_mov_lwr(i32 %75, i32 %77, i32 %78, i32 %79)
  %81 = call i32 @emit_insn(i32 %80)
  br label %82

82:                                               ; preds = %69, %56
  store i32 1, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %47, %41
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i64 @SUBREG_BYTE(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i64) #1

declare dso_local i32 @mips_get_unaligned_mem(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @gen_reg_rtx(i64) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_mov_ldl(i32, i32, i32) #1

declare dso_local i32 @gen_mov_ldr(i32, i32, i32, i32) #1

declare dso_local i32 @copy_rtx(i32) #1

declare dso_local i32 @gen_mov_lwl(i32, i32, i32) #1

declare dso_local i32 @gen_mov_lwr(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
