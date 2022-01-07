; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips16_get_imm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips16_get_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16, i16, i32, i32, i32)* @mips16_get_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips16_get_imm(i16 zeroext %0, i16 zeroext %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i16 %0, i16* %7, align 2
  store i16 %1, i16* %8, align 2
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i16, i16* %7, align 2
  %17 = zext i16 %16 to i32
  %18 = and i32 %17, 63488
  %19 = icmp eq i32 %18, 61440
  br i1 %19, label %20, label %43

20:                                               ; preds = %5
  %21 = load i16, i16* %7, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 31
  %24 = shl i32 %23, 11
  %25 = load i16, i16* %7, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 2016
  %28 = or i32 %24, %27
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = and i32 %29, 32768
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load i32, i32* %12, align 4
  %34 = and i32 %33, 65535
  %35 = sub nsw i32 65536, %34
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %32, %20
  %38 = load i32, i32* %12, align 4
  %39 = load i16, i16* %8, align 2
  %40 = zext i16 %39 to i32
  %41 = and i32 %40, 31
  %42 = or i32 %38, %41
  store i32 %42, i32* %6, align 4
  br label %70

43:                                               ; preds = %5
  %44 = load i32, i32* %9, align 4
  %45 = shl i32 1, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %13, align 4
  %49 = ashr i32 %48, 1
  store i32 %49, i32* %15, align 4
  %50 = load i16, i16* %8, align 2
  %51 = zext i16 %50 to i32
  %52 = load i32, i32* %14, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %43
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %15, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %12, align 4
  %64 = sub nsw i32 %62, %63
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %61, %56, %43
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %10, align 4
  %69 = mul nsw i32 %67, %68
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %66, %37
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
