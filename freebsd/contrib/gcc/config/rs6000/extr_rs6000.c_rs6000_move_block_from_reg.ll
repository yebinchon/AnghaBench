; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_move_block_from_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_move_block_from_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_32BIT = common dso_local global i64 0, align 8
@SImode = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@reload_completed = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @rs6000_move_block_from_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs6000_move_block_from_reg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* @TARGET_32BIT, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @SImode, align 4
  br label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @DImode, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %72

21:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %69, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %72

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @GET_MODE_SIZE(i32 %30)
  %32 = mul nsw i32 %29, %31
  %33 = call i32 @adjust_address_nv(i32 %27, i32 %28, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i64, i64* @reload_completed, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %26
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @XEXP(i32 %38, i32 0)
  %40 = call i32 @strict_memory_address_p(i32 %37, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @NULL_RTX, align 4
  store i32 %43, i32* %9, align 4
  br label %53

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @BLKmode, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @GET_MODE_SIZE(i32 %49)
  %51 = mul nsw i32 %48, %50
  %52 = call i32 @simplify_gen_subreg(i32 %45, i32 %46, i32 %47, i32 %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %44, %42
  br label %59

54:                                               ; preds = %26
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @XEXP(i32 %56, i32 0)
  %58 = call i32 @replace_equiv_address(i32 %55, i32 %57)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %54, %53
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @gcc_assert(i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %64, %65
  %67 = call i32 @gen_rtx_REG(i32 %63, i32 %66)
  %68 = call i32 @emit_move_insn(i32 %62, i32 %67)
  br label %69

69:                                               ; preds = %59
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %22

72:                                               ; preds = %20, %22
  ret void
}

declare dso_local i32 @adjust_address_nv(i32, i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @strict_memory_address_p(i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @simplify_gen_subreg(i32, i32, i32, i32) #1

declare dso_local i32 @replace_equiv_address(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
