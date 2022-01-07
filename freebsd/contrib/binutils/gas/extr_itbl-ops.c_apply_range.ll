; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_itbl-ops.c_apply_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_itbl-ops.c_apply_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itbl_range = type { i64, i64 }

@MAX_BITPOS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64)* @apply_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @apply_range(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.itbl_range, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.itbl_range* %4 to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  store i64 %1, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  store i64 %2, i64* %11, align 8
  store i64 %0, i64* %5, align 8
  %12 = load i64, i64* @MAX_BITPOS, align 8
  %13 = getelementptr inbounds %struct.itbl_range, %struct.itbl_range* %4, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %12, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = getelementptr inbounds %struct.itbl_range, %struct.itbl_range* %4, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.itbl_range, %struct.itbl_range* %4, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp uge i64 %18, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load i64, i64* @MAX_BITPOS, align 8
  %25 = getelementptr inbounds %struct.itbl_range, %struct.itbl_range* %4, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %24, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = getelementptr inbounds %struct.itbl_range, %struct.itbl_range* %4, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp uge i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = shl i32 -1, %35
  %37 = zext i32 %36 to i64
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = lshr i64 %38, %40
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.itbl_range, %struct.itbl_range* %4, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = lshr i64 %42, %44
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.itbl_range, %struct.itbl_range* %4, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = shl i64 %46, %48
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds %struct.itbl_range, %struct.itbl_range* %4, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = shl i64 %50, %52
  %54 = load i64, i64* %6, align 8
  %55 = and i64 %53, %54
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  ret i64 %56
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
