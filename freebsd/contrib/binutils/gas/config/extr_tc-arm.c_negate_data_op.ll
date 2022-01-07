; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_negate_data_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_negate_data_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DATA_OP_SHIFT = common dso_local global i64 0, align 8
@FAIL = common dso_local global i32 0, align 4
@OPCODE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64)* @negate_data_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @negate_data_op(i64* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = sub i64 0, %10
  %12 = call i64 @encode_arm_immediate(i64 %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %5, align 8
  %14 = xor i64 %13, -1
  %15 = call i64 @encode_arm_immediate(i64 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64*, i64** %4, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DATA_OP_SHIFT, align 8
  %19 = lshr i64 %17, %18
  %20 = and i64 %19, 15
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %43 [
    i32 128, label %23
    i32 136, label %25
    i32 132, label %27
    i32 133, label %29
    i32 131, label %31
    i32 130, label %33
    i32 135, label %35
    i32 134, label %37
    i32 137, label %39
    i32 129, label %41
  ]

23:                                               ; preds = %2
  store i32 136, i32* %7, align 4
  %24 = load i64, i64* %8, align 8
  store i64 %24, i64* %5, align 8
  br label %45

25:                                               ; preds = %2
  store i32 128, i32* %7, align 4
  %26 = load i64, i64* %8, align 8
  store i64 %26, i64* %5, align 8
  br label %45

27:                                               ; preds = %2
  store i32 133, i32* %7, align 4
  %28 = load i64, i64* %8, align 8
  store i64 %28, i64* %5, align 8
  br label %45

29:                                               ; preds = %2
  store i32 132, i32* %7, align 4
  %30 = load i64, i64* %8, align 8
  store i64 %30, i64* %5, align 8
  br label %45

31:                                               ; preds = %2
  store i32 130, i32* %7, align 4
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %5, align 8
  br label %45

33:                                               ; preds = %2
  store i32 131, i32* %7, align 4
  %34 = load i64, i64* %9, align 8
  store i64 %34, i64* %5, align 8
  br label %45

35:                                               ; preds = %2
  store i32 134, i32* %7, align 4
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %5, align 8
  br label %45

37:                                               ; preds = %2
  store i32 135, i32* %7, align 4
  %38 = load i64, i64* %9, align 8
  store i64 %38, i64* %5, align 8
  br label %45

39:                                               ; preds = %2
  store i32 129, i32* %7, align 4
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %5, align 8
  br label %45

41:                                               ; preds = %2
  store i32 137, i32* %7, align 4
  %42 = load i64, i64* %9, align 8
  store i64 %42, i64* %5, align 8
  br label %45

43:                                               ; preds = %2
  %44 = load i32, i32* @FAIL, align 4
  store i32 %44, i32* %3, align 4
  br label %67

45:                                               ; preds = %41, %39, %37, %35, %33, %31, %29, %27, %25, %23
  %46 = load i64, i64* %5, align 8
  %47 = load i32, i32* @FAIL, align 4
  %48 = zext i32 %47 to i64
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @FAIL, align 4
  store i32 %51, i32* %3, align 4
  br label %67

52:                                               ; preds = %45
  %53 = load i64, i64* @OPCODE_MASK, align 8
  %54 = load i64*, i64** %4, align 8
  %55 = load i64, i64* %54, align 8
  %56 = and i64 %55, %53
  store i64 %56, i64* %54, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i64, i64* @DATA_OP_SHIFT, align 8
  %59 = trunc i64 %58 to i32
  %60 = shl i32 %57, %59
  %61 = sext i32 %60 to i64
  %62 = load i64*, i64** %4, align 8
  %63 = load i64, i64* %62, align 8
  %64 = or i64 %63, %61
  store i64 %64, i64* %62, align 8
  %65 = load i64, i64* %5, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %52, %50, %43
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @encode_arm_immediate(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
