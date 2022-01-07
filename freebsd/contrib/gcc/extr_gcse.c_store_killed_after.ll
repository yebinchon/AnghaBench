; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_store_killed_after.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_store_killed_after.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i32, i32*, i64*)* @store_killed_after to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_killed_after(i64 %0, i64 %1, i64 %2, i32 %3, i32* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call i64 @BB_END(i32 %16)
  store i64 %17, i64* %14, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = call i32 @store_ops_ok(i64 %18, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %6
  %23 = load i64*, i64** %13, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* @NULL_RTX, align 8
  %27 = load i64*, i64** %13, align 8
  store i64 %26, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %22
  store i32 1, i32* %7, align 4
  br label %54

29:                                               ; preds = %6
  %30 = load i64, i64* %14, align 8
  store i64 %30, i64* %15, align 8
  br label %31

31:                                               ; preds = %50, %29
  %32 = load i64, i64* %15, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @PREV_INSN(i64 %33)
  %35 = icmp ne i64 %32, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %15, align 8
  %40 = call i64 @store_killed_in_insn(i64 %37, i64 %38, i64 %39, i32 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i64*, i64** %13, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i64, i64* %15, align 8
  %47 = load i64*, i64** %13, align 8
  store i64 %46, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %42
  store i32 1, i32* %7, align 4
  br label %54

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %15, align 8
  %52 = call i64 @PREV_INSN(i64 %51)
  store i64 %52, i64* %15, align 8
  br label %31

53:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %53, %48, %28
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i64 @BB_END(i32) #1

declare dso_local i32 @store_ops_ok(i64, i32*) #1

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i64 @store_killed_in_insn(i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
