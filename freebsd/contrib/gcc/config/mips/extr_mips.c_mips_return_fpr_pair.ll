; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_return_fpr_pair.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_return_fpr_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_NEWABI = common dso_local global i64 0, align 8
@FP_INC = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@FP_RETURN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @mips_return_fpr_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_return_fpr_pair(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i64, i64* @TARGET_NEWABI, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %17

15:                                               ; preds = %5
  %16 = load i32, i32* @FP_INC, align 4
  br label %17

17:                                               ; preds = %15, %14
  %18 = phi i32 [ 2, %14 ], [ %16, %15 ]
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @VOIDmode, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i64, i64* @FP_RETURN, align 8
  %23 = call i32 @gen_rtx_REG(i32 %21, i64 %22)
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @GEN_INT(i32 %24)
  %26 = call i32 @gen_rtx_EXPR_LIST(i32 %20, i32 %23, i32 %25)
  %27 = load i32, i32* @VOIDmode, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i64, i64* @FP_RETURN, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = call i32 @gen_rtx_REG(i32 %28, i64 %32)
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @GEN_INT(i32 %34)
  %36 = call i32 @gen_rtx_EXPR_LIST(i32 %27, i32 %33, i32 %35)
  %37 = call i32 @gen_rtvec(i32 2, i32 %26, i32 %36)
  %38 = call i32 @gen_rtx_PARALLEL(i32 %19, i32 %37)
  ret i32 %38
}

declare dso_local i32 @gen_rtx_PARALLEL(i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_EXPR_LIST(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i64) #1

declare dso_local i32 @GEN_INT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
