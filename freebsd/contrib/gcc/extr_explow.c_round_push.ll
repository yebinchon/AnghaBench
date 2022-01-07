; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_explow.c_round_push.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_explow.c_round_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PREFERRED_STACK_BOUNDARY = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@add_optab = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@OPTAB_LIB_WIDEN = common dso_local global i32 0, align 4
@TRUNC_DIV_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @round_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @round_push(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @PREFERRED_STACK_BOUNDARY, align 4
  %7 = load i32, i32* @BITS_PER_UNIT, align 4
  %8 = sdiv i32 %6, %7
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  store i32 %12, i32* %2, align 4
  br label %61

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @GET_CODE(i32 %14)
  %16 = load i64, i64* @CONST_INT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @INTVAL(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %20, %21
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* %4, align 4
  %25 = sdiv i32 %23, %24
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @INTVAL(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @GEN_INT(i32 %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %18
  br label %59

36:                                               ; preds = %13
  %37 = load i32, i32* @Pmode, align 4
  %38 = load i32, i32* @add_optab, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @GEN_INT(i32 %41)
  %43 = load i32, i32* @NULL_RTX, align 4
  %44 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %45 = call i32 @expand_binop(i32 %37, i32 %38, i32 %39, i32 %42, i32 %43, i32 1, i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* @TRUNC_DIV_EXPR, align 4
  %47 = load i32, i32* @Pmode, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @GEN_INT(i32 %49)
  %51 = load i32, i32* @NULL_RTX, align 4
  %52 = call i32 @expand_divmod(i32 0, i32 %46, i32 %47, i32 %48, i32 %50, i32 %51, i32 1)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* @Pmode, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @GEN_INT(i32 %55)
  %57 = load i32, i32* @NULL_RTX, align 4
  %58 = call i32 @expand_mult(i32 %53, i32 %54, i32 %56, i32 %57, i32 1)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %36, %35
  %60 = load i32, i32* %3, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %11
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @expand_binop(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @expand_divmod(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @expand_mult(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
