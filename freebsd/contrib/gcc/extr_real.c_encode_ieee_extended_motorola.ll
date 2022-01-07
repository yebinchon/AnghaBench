; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_encode_ieee_extended_motorola.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_encode_ieee_extended_motorola.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.real_format = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.real_format*, i64*, i32*)* @encode_ieee_extended_motorola to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_ieee_extended_motorola(%struct.real_format* %0, i64* %1, i32* %2) #0 {
  %4 = alloca %struct.real_format*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [3 x i64], align 16
  store %struct.real_format* %0, %struct.real_format** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.real_format*, %struct.real_format** %4, align 8
  %9 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @encode_ieee_extended(%struct.real_format* %8, i64* %9, i32* %10)
  %12 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 2
  %13 = load i64, i64* %12, align 16
  %14 = shl i64 %13, 16
  %15 = load i64*, i64** %5, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  store i64 %14, i64* %16, align 8
  %17 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  store i64 %18, i64* %20, align 8
  %21 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %22 = load i64, i64* %21, align 16
  %23 = load i64*, i64** %5, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  store i64 %22, i64* %24, align 8
  ret void
}

declare dso_local i32 @encode_ieee_extended(%struct.real_format*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
