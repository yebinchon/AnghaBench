; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_sse_movcc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_sse_movcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@optimize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64)* @ix86_expand_sse_movcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ix86_expand_sse_movcc(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @GET_MODE(i64 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @CONST0_RTX(i32 %16)
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @force_reg(i32 %20, i64 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @gen_rtx_AND(i32 %23, i64 %24, i64 %25)
  store i64 %26, i64* %12, align 8
  %27 = load i32, i32* @VOIDmode, align 4
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %12, align 8
  %30 = call i32 @gen_rtx_SET(i32 %27, i64 %28, i64 %29)
  %31 = call i32 @emit_insn(i32 %30)
  br label %101

32:                                               ; preds = %4
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @CONST0_RTX(i32 %34)
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @force_reg(i32 %38, i64 %39)
  store i64 %40, i64* %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @gen_rtx_NOT(i32 %41, i64 %42)
  store i64 %43, i64* %12, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i64 @gen_rtx_AND(i32 %44, i64 %45, i64 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i32, i32* @VOIDmode, align 4
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @gen_rtx_SET(i32 %48, i64 %49, i64 %50)
  %52 = call i32 @emit_insn(i32 %51)
  br label %100

53:                                               ; preds = %32
  %54 = load i32, i32* %9, align 4
  %55 = load i64, i64* %7, align 8
  %56 = call i64 @force_reg(i32 %54, i64 %55)
  store i64 %56, i64* %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i64, i64* %8, align 8
  %59 = call i64 @force_reg(i32 %57, i64 %58)
  store i64 %59, i64* %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @gen_reg_rtx(i32 %60)
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* @optimize, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load i32, i32* %9, align 4
  %66 = call i64 @gen_reg_rtx(i32 %65)
  store i64 %66, i64* %11, align 8
  br label %69

67:                                               ; preds = %53
  %68 = load i64, i64* %5, align 8
  store i64 %68, i64* %11, align 8
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i32, i32* %9, align 4
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i64 @gen_rtx_AND(i32 %70, i64 %71, i64 %72)
  store i64 %73, i64* %12, align 8
  %74 = load i32, i32* @VOIDmode, align 4
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %12, align 8
  %77 = call i32 @gen_rtx_SET(i32 %74, i64 %75, i64 %76)
  %78 = call i32 @emit_insn(i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = load i64, i64* %6, align 8
  %81 = call i64 @gen_rtx_NOT(i32 %79, i64 %80)
  store i64 %81, i64* %12, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i64 @gen_rtx_AND(i32 %82, i64 %83, i64 %84)
  store i64 %85, i64* %12, align 8
  %86 = load i32, i32* @VOIDmode, align 4
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @gen_rtx_SET(i32 %86, i64 %87, i64 %88)
  %90 = call i32 @emit_insn(i32 %89)
  %91 = load i32, i32* %9, align 4
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* %10, align 8
  %94 = call i64 @gen_rtx_IOR(i32 %91, i64 %92, i64 %93)
  store i64 %94, i64* %12, align 8
  %95 = load i32, i32* @VOIDmode, align 4
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* %12, align 8
  %98 = call i32 @gen_rtx_SET(i32 %95, i64 %96, i64 %97)
  %99 = call i32 @emit_insn(i32 %98)
  br label %100

100:                                              ; preds = %69, %37
  br label %101

101:                                              ; preds = %100, %19
  ret void
}

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @CONST0_RTX(i32) #1

declare dso_local i64 @force_reg(i32, i64) #1

declare dso_local i64 @gen_rtx_AND(i32, i64, i64) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i64, i64) #1

declare dso_local i64 @gen_rtx_NOT(i32, i64) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i64 @gen_rtx_IOR(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
