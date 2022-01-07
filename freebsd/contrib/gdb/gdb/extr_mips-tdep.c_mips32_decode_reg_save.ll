; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips32_decode_reg_save.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips32_decode_reg_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*, i64*)* @mips32_decode_reg_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips32_decode_reg_save(i32 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, -2097152
  %10 = icmp eq i32 %9, -1348468736
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, -2097152
  %14 = icmp eq i32 %13, -1346371584
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, -2097152
  %18 = icmp eq i32 %17, -6291456
  br i1 %18, label %19, label %29

19:                                               ; preds = %15, %11, %3
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 2031616
  %22 = ashr i32 %21, 16
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 1, %23
  %25 = sext i32 %24 to i64
  %26 = load i64*, i64** %5, align 8
  %27 = load i64, i64* %26, align 8
  %28 = or i64 %27, %25
  store i64 %28, i64* %26, align 8
  br label %52

29:                                               ; preds = %15
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, -2097152
  %32 = icmp eq i32 %31, -408944640
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, -2097152
  %36 = icmp eq i32 %35, -406847488
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, -2097152
  %40 = icmp eq i32 %39, -140509184
  br i1 %40, label %41, label %51

41:                                               ; preds = %37, %33, %29
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, 2031616
  %44 = ashr i32 %43, 16
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = shl i32 1, %45
  %47 = sext i32 %46 to i64
  %48 = load i64*, i64** %6, align 8
  %49 = load i64, i64* %48, align 8
  %50 = or i64 %49, %47
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %41, %37
  br label %52

52:                                               ; preds = %51, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
