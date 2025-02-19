; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_calculate_alignment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_calculate_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SLAB_HWCACHE_ALIGN = common dso_local global i64 0, align 8
@ARCH_SLAB_MINALIGN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64)* @calculate_alignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calculate_alignment(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @SLAB_HWCACHE_ALIGN, align 8
  %10 = and i64 %8, %9
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = call i64 (...) @cache_line_size()
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %19, %12
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = udiv i64 %16, 2
  %18 = icmp ule i64 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i64, i64* %7, align 8
  %21 = udiv i64 %20, 2
  store i64 %21, i64* %7, align 8
  br label %14

22:                                               ; preds = %14
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @max(i64 %23, i64 %24)
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %22, %3
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @ARCH_SLAB_MINALIGN, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* @ARCH_SLAB_MINALIGN, align 8
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @ALIGN(i64 %33, i32 8)
  ret i64 %34
}

declare dso_local i64 @cache_line_size(...) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @ALIGN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
