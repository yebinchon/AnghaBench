; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_intel8x0m.c_snd_intel8x0_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_intel8x0m.c_snd_intel8x0_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.intel8x0m = type { i32 }
%struct.ichdev = type { i64, i64 }

@ICH_IOCE = common dso_local global i8 0, align 1
@ICH_STARTBM = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@ICH_REG_OFF_CR = common dso_local global i64 0, align 8
@ICH_DCH = common dso_local global i32 0, align 4
@ICH_RESETREGS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_intel8x0_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel8x0m*, align 8
  %7 = alloca %struct.ichdev*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = call %struct.intel8x0m* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.intel8x0m* %11, %struct.intel8x0m** %6, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = call %struct.ichdev* @get_ichdev(%struct.snd_pcm_substream* %12)
  store %struct.ichdev* %13, %struct.ichdev** %7, align 8
  store i8 0, i8* %8, align 1
  %14 = load %struct.ichdev*, %struct.ichdev** %7, align 8
  %15 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %35 [
    i32 130, label %18
    i32 131, label %18
    i32 129, label %25
    i32 128, label %25
    i32 133, label %26
    i32 132, label %28
  ]

18:                                               ; preds = %2, %2
  %19 = load i8, i8* @ICH_IOCE, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @ICH_STARTBM, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %20, %22
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %8, align 1
  br label %38

25:                                               ; preds = %2, %2
  store i8 0, i8* %8, align 1
  br label %38

26:                                               ; preds = %2
  %27 = load i8, i8* @ICH_IOCE, align 1
  store i8 %27, i8* %8, align 1
  br label %38

28:                                               ; preds = %2
  %29 = load i8, i8* @ICH_IOCE, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @ICH_STARTBM, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %30, %32
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %8, align 1
  br label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %69

38:                                               ; preds = %28, %26, %25, %18
  %39 = load %struct.intel8x0m*, %struct.intel8x0m** %6, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @ICH_REG_OFF_CR, align 8
  %42 = add i64 %40, %41
  %43 = load i8, i8* %8, align 1
  %44 = call i32 @iputbyte(%struct.intel8x0m* %39, i64 %42, i8 zeroext %43)
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 129
  br i1 %46, label %47, label %68

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %60, %47
  %49 = load %struct.intel8x0m*, %struct.intel8x0m** %6, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.ichdev*, %struct.ichdev** %7, align 8
  %52 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %50, %53
  %55 = call i32 @igetbyte(%struct.intel8x0m* %49, i64 %54)
  %56 = load i32, i32* @ICH_DCH, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %48

61:                                               ; preds = %48
  %62 = load %struct.intel8x0m*, %struct.intel8x0m** %6, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* @ICH_REG_OFF_CR, align 8
  %65 = add i64 %63, %64
  %66 = load i8, i8* @ICH_RESETREGS, align 1
  %67 = call i32 @iputbyte(%struct.intel8x0m* %62, i64 %65, i8 zeroext %66)
  br label %68

68:                                               ; preds = %61, %38
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %35
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.intel8x0m* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.ichdev* @get_ichdev(%struct.snd_pcm_substream*) #1

declare dso_local i32 @iputbyte(%struct.intel8x0m*, i64, i8 zeroext) #1

declare dso_local i32 @igetbyte(%struct.intel8x0m*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
