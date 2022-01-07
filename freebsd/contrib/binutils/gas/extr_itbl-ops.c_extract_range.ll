; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_itbl-ops.c_extract_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_itbl-ops.c_extract_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itbl_range = type { i32, i64 }

@MAX_BITPOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i64)* @extract_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @extract_range(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.itbl_range, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.itbl_range* %4 to { i32, i64 }*
  %10 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %9, i32 0, i32 0
  store i32 %1, i32* %10, align 8
  %11 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %9, i32 0, i32 1
  store i64 %2, i64* %11, align 8
  store i64 %0, i64* %5, align 8
  %12 = load i32, i32* @MAX_BITPOS, align 4
  %13 = getelementptr inbounds %struct.itbl_range, %struct.itbl_range* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %12, %14
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = shl i32 -1, %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = lshr i64 %19, %21
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.itbl_range, %struct.itbl_range* %4, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = lshr i64 %23, %25
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.itbl_range, %struct.itbl_range* %4, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = shl i64 %27, %29
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = and i64 %31, %32
  %34 = getelementptr inbounds %struct.itbl_range, %struct.itbl_range* %4, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = lshr i64 %33, %35
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  ret i64 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
