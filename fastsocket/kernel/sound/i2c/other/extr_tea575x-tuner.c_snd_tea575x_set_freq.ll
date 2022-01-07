; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_tea575x-tuner.c_snd_tea575x_set_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_tea575x-tuner.c_snd_tea575x_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tea575x = type { i32, i64, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.snd_tea575x*, i64)* }

@TEA575X_BIT_FREQ_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_tea575x*)* @snd_tea575x_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_tea575x_set_freq(%struct.snd_tea575x* %0) #0 {
  %2 = alloca %struct.snd_tea575x*, align 8
  %3 = alloca i64, align 8
  store %struct.snd_tea575x* %0, %struct.snd_tea575x** %2, align 8
  %4 = load %struct.snd_tea575x*, %struct.snd_tea575x** %2, align 8
  %5 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = sdiv i32 %6, 16
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp ugt i64 %9, 108000
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i64 108000, i64* %3, align 8
  br label %12

12:                                               ; preds = %11, %1
  %13 = load i64, i64* %3, align 8
  %14 = icmp ult i64 %13, 87000
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i64 87000, i64* %3, align 8
  br label %16

16:                                               ; preds = %15, %12
  %17 = load %struct.snd_tea575x*, %struct.snd_tea575x** %2, align 8
  %18 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.snd_tea575x*, %struct.snd_tea575x** %2, align 8
  %23 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = sub i64 %25, %24
  store i64 %26, i64* %3, align 8
  br label %33

27:                                               ; preds = %16
  %28 = load %struct.snd_tea575x*, %struct.snd_tea575x** %2, align 8
  %29 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %27, %21
  %34 = load i64, i64* %3, align 8
  %35 = mul i64 %34, 10
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = udiv i64 %36, 125
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* @TEA575X_BIT_FREQ_MASK, align 8
  %39 = xor i64 %38, -1
  %40 = load %struct.snd_tea575x*, %struct.snd_tea575x** %2, align 8
  %41 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = and i64 %42, %39
  store i64 %43, i64* %41, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @TEA575X_BIT_FREQ_MASK, align 8
  %46 = and i64 %44, %45
  %47 = load %struct.snd_tea575x*, %struct.snd_tea575x** %2, align 8
  %48 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = or i64 %49, %46
  store i64 %50, i64* %48, align 8
  %51 = load %struct.snd_tea575x*, %struct.snd_tea575x** %2, align 8
  %52 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (%struct.snd_tea575x*, i64)*, i32 (%struct.snd_tea575x*, i64)** %54, align 8
  %56 = load %struct.snd_tea575x*, %struct.snd_tea575x** %2, align 8
  %57 = load %struct.snd_tea575x*, %struct.snd_tea575x** %2, align 8
  %58 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 %55(%struct.snd_tea575x* %56, i64 %59)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
