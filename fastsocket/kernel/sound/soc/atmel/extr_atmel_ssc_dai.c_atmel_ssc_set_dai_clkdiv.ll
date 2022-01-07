; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/atmel/extr_atmel_ssc_dai.c_atmel_ssc_set_dai_clkdiv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/atmel/extr_atmel_ssc_dai.c_atmel_ssc_set_dai_clkdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_ssc_info = type { i32, i32, i32 }
%struct.snd_soc_dai = type { i64 }

@ssc_info = common dso_local global %struct.atmel_ssc_info* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32)* @atmel_ssc_set_dai_clkdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ssc_set_dai_clkdiv(%struct.snd_soc_dai* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.atmel_ssc_info*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** @ssc_info, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %9, i64 %12
  store %struct.atmel_ssc_info* %13, %struct.atmel_ssc_info** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %43 [
    i32 130, label %15
    i32 128, label %35
    i32 129, label %39
  ]

15:                                               ; preds = %3
  %16 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %8, align 8
  %17 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %8, align 8
  %23 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %34

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %8, align 8
  %27 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %47

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %20
  br label %46

35:                                               ; preds = %3
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %8, align 8
  %38 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %46

39:                                               ; preds = %3
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %8, align 8
  %42 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  br label %46

43:                                               ; preds = %3
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %39, %35, %34
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %43, %30
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
