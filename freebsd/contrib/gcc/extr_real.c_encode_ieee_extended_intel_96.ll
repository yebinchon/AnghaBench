; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_encode_ieee_extended_intel_96.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_encode_ieee_extended_intel_96.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.real_format = type { i32 }

@FLOAT_WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.real_format*, i64*, i32*)* @encode_ieee_extended_intel_96 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_ieee_extended_intel_96(%struct.real_format* %0, i64* %1, i32* %2) #0 {
  %4 = alloca %struct.real_format*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [3 x i64], align 16
  store %struct.real_format* %0, %struct.real_format** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i64, i64* @FLOAT_WORDS_BIG_ENDIAN, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %3
  %11 = load %struct.real_format*, %struct.real_format** %4, align 8
  %12 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @encode_ieee_extended(%struct.real_format* %11, i64* %12, i32* %13)
  %15 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 2
  %16 = load i64, i64* %15, align 16
  %17 = shl i64 %16, 16
  %18 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %19, 4294901760
  %21 = lshr i64 %20, 16
  %22 = or i64 %17, %21
  %23 = load i64*, i64** %5, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  store i64 %22, i64* %24, align 8
  %25 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = shl i64 %26, 16
  %28 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %29 = load i64, i64* %28, align 16
  %30 = and i64 %29, 4294901760
  %31 = lshr i64 %30, 16
  %32 = or i64 %27, %31
  %33 = load i64*, i64** %5, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  store i64 %32, i64* %34, align 8
  %35 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %36 = load i64, i64* %35, align 16
  %37 = shl i64 %36, 16
  %38 = load i64*, i64** %5, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 2
  store i64 %37, i64* %39, align 8
  br label %45

40:                                               ; preds = %3
  %41 = load %struct.real_format*, %struct.real_format** %4, align 8
  %42 = load i64*, i64** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @encode_ieee_extended(%struct.real_format* %41, i64* %42, i32* %43)
  br label %45

45:                                               ; preds = %40, %10
  ret void
}

declare dso_local i32 @encode_ieee_extended(%struct.real_format*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
