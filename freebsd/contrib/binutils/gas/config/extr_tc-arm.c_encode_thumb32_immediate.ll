; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_encode_thumb32_immediate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_encode_thumb32_immediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @encode_thumb32_immediate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_thumb32_immediate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ule i32 %6, 255
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %2, align 4
  br label %80

10:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %11

11:                                               ; preds = %34, %10
  %12 = load i32, i32* %5, align 4
  %13 = icmp ule i32 %12, 24
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %5, align 4
  %17 = lshr i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 255, %19
  %21 = xor i32 %20, -1
  %22 = and i32 %18, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %14
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %5, align 4
  %27 = lshr i32 %25, %26
  %28 = and i32 %27, 127
  %29 = load i32, i32* %5, align 4
  %30 = sub i32 32, %29
  %31 = shl i32 %30, 7
  %32 = or i32 %28, %31
  store i32 %32, i32* %2, align 4
  br label %80

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %11

37:                                               ; preds = %11
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, 255
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = shl i32 %41, 16
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %42, %43
  %45 = icmp eq i32 %40, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = or i32 256, %47
  store i32 %48, i32* %2, align 4
  br label %80

49:                                               ; preds = %37
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %4, align 4
  %52 = shl i32 %51, 24
  %53 = load i32, i32* %4, align 4
  %54 = shl i32 %53, 16
  %55 = or i32 %52, %54
  %56 = load i32, i32* %4, align 4
  %57 = shl i32 %56, 8
  %58 = or i32 %55, %57
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %58, %59
  %61 = icmp eq i32 %50, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load i32, i32* %4, align 4
  %64 = or i32 768, %63
  store i32 %64, i32* %2, align 4
  br label %80

65:                                               ; preds = %49
  %66 = load i32, i32* %3, align 4
  %67 = and i32 %66, 65280
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %4, align 4
  %70 = shl i32 %69, 16
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %70, %71
  %73 = icmp eq i32 %68, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load i32, i32* %4, align 4
  %76 = lshr i32 %75, 8
  %77 = or i32 512, %76
  store i32 %77, i32* %2, align 4
  br label %80

78:                                               ; preds = %65
  %79 = load i32, i32* @FAIL, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %74, %62, %46, %24, %8
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
