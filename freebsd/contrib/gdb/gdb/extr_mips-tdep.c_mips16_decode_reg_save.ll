; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips16_decode_reg_save.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips16_decode_reg_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mips16_to_32_reg = common dso_local global i32* null, align 8
@RA_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*)* @mips16_decode_reg_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips16_decode_reg_save(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 63488
  %9 = icmp eq i32 %8, 53248
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load i32*, i32** @mips16_to_32_reg, align 8
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 1792
  %14 = ashr i32 %13, 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 1, %18
  %20 = sext i32 %19 to i64
  %21 = load i64*, i64** %4, align 8
  %22 = load i64, i64* %21, align 8
  %23 = or i64 %22, %20
  store i64 %23, i64* %21, align 8
  br label %59

24:                                               ; preds = %2
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, 65280
  %27 = icmp eq i32 %26, 63744
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i32*, i32** @mips16_to_32_reg, align 8
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, 224
  %32 = ashr i32 %31, 5
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = shl i32 1, %36
  %38 = sext i32 %37 to i64
  %39 = load i64*, i64** %4, align 8
  %40 = load i64, i64* %39, align 8
  %41 = or i64 %40, %38
  store i64 %41, i64* %39, align 8
  br label %58

42:                                               ; preds = %24
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, 65280
  %45 = icmp eq i32 %44, 25088
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, 65280
  %49 = icmp eq i32 %48, 64000
  br i1 %49, label %50, label %57

50:                                               ; preds = %46, %42
  %51 = load i32, i32* @RA_REGNUM, align 4
  %52 = shl i32 1, %51
  %53 = sext i32 %52 to i64
  %54 = load i64*, i64** %4, align 8
  %55 = load i64, i64* %54, align 8
  %56 = or i64 %55, %53
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %50, %46
  br label %58

58:                                               ; preds = %57, %28
  br label %59

59:                                               ; preds = %58, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
