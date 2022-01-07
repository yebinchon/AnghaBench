; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_thumb32_negate_data_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_thumb32_negate_data_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T2_DATA_OP_SHIFT = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@T2_OPCODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @thumb32_negate_data_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thumb32_negate_data_op(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sub i32 0, %11
  %13 = call i32 @encode_thumb32_immediate(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  %15 = xor i32 %14, -1
  %16 = call i32 @encode_thumb32_immediate(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 15
  store i32 %20, i32* %8, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @T2_DATA_OP_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = and i32 %24, 15
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %49 [
    i32 128, label %27
    i32 134, label %29
    i32 130, label %31
    i32 131, label %33
    i32 133, label %35
    i32 132, label %43
    i32 135, label %45
    i32 129, label %47
  ]

27:                                               ; preds = %2
  store i32 134, i32* %7, align 4
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %5, align 4
  br label %51

29:                                               ; preds = %2
  store i32 128, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %5, align 4
  br label %51

31:                                               ; preds = %2
  store i32 131, i32* %7, align 4
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %51

33:                                               ; preds = %2
  store i32 130, i32* %7, align 4
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %51

35:                                               ; preds = %2
  store i32 132, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 15
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @FAIL, align 4
  store i32 %39, i32* %5, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %38
  br label %51

43:                                               ; preds = %2
  store i32 133, i32* %7, align 4
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  br label %51

45:                                               ; preds = %2
  store i32 129, i32* %7, align 4
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %51

47:                                               ; preds = %2
  store i32 135, i32* %7, align 4
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %51

49:                                               ; preds = %2
  %50 = load i32, i32* @FAIL, align 4
  store i32 %50, i32* %3, align 4
  br label %69

51:                                               ; preds = %47, %45, %43, %42, %33, %31, %29, %27
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @FAIL, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @FAIL, align 4
  store i32 %56, i32* %3, align 4
  br label %69

57:                                               ; preds = %51
  %58 = load i32, i32* @T2_OPCODE_MASK, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %58
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @T2_DATA_OP_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %57, %55, %49
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @encode_thumb32_immediate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
