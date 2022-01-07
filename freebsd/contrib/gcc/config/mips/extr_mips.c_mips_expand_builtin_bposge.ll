; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_expand_builtin_bposge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_expand_builtin_bposge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SImode = common dso_local global i64 0, align 8
@CCDSPmode = common dso_local global i32 0, align 4
@CCDSP_PO_REGNUM = common dso_local global i32 0, align 4
@MIPS_BUILTIN_BPOSGE32 = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@const1_rtx = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mips_expand_builtin_bposge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_expand_builtin_bposge(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @GET_MODE(i32 %11)
  %13 = load i64, i64* @SImode, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10, %2
  %16 = load i64, i64* @SImode, align 8
  %17 = call i32 @gen_reg_rtx(i64 %16)
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %15, %10
  %19 = load i32, i32* @CCDSPmode, align 4
  %20 = load i32, i32* @CCDSP_PO_REGNUM, align 4
  %21 = call i32 @gen_rtx_REG(i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @MIPS_BUILTIN_BPOSGE32, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 32, i32* %7, align 4
  br label %28

26:                                               ; preds = %18
  %27 = call i32 @gcc_assert(i32 0)
  br label %28

28:                                               ; preds = %26, %25
  %29 = load i32, i32* @VOIDmode, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @GEN_INT(i32 %31)
  %33 = call i32 @gen_rtx_GE(i32 %29, i32 %30, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @const1_rtx, align 4
  %37 = load i32, i32* @const0_rtx, align 4
  %38 = call i32 @mips_builtin_branch_and_move(i32 %34, i32 %35, i32 %36, i32 %37)
  ret i32 %38
}

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @gen_reg_rtx(i64) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @gen_rtx_GE(i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @mips_builtin_branch_and_move(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
