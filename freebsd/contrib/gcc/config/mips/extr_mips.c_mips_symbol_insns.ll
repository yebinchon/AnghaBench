; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_symbol_insns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_symbol_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_MIPS16 = common dso_local global i32 0, align 4
@ABI_HAS_64BIT_SYMBOLS = common dso_local global i32 0, align 4
@mips_split_p = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mips_symbol_insns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_symbol_insns(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %27 [
    i32 140, label %5
    i32 132, label %14
    i32 142, label %15
    i32 133, label %16
    i32 134, label %16
    i32 136, label %17
    i32 138, label %17
    i32 139, label %17
    i32 137, label %17
    i32 145, label %17
    i32 143, label %17
    i32 144, label %17
    i32 130, label %17
    i32 129, label %17
    i32 141, label %17
    i32 135, label %17
    i32 128, label %17
    i32 131, label %26
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @TARGET_MIPS16, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i32 0, i32* %2, align 4
  br label %29

9:                                                ; preds = %5
  %10 = load i32, i32* @ABI_HAS_64BIT_SYMBOLS, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 6, i32 2
  store i32 %13, i32* %2, align 4
  br label %29

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %29

15:                                               ; preds = %1
  store i32 2, i32* %2, align 4
  br label %29

16:                                               ; preds = %1, %1
  store i32 3, i32* %2, align 4
  br label %29

17:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %18 = load i32*, i32** @mips_split_p, align 8
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 2, i32 1
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

27:                                               ; preds = %1
  %28 = call i32 (...) @gcc_unreachable()
  br label %29

29:                                               ; preds = %27, %26, %17, %16, %15, %14, %9, %8
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
