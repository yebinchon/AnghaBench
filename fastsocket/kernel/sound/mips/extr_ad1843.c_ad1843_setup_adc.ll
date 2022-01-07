; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_ad1843.c_ad1843_setup_adc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_ad1843.c_ad1843_setup_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ad1843 = type { i32 }

@ad1843_C3C = common dso_local global i32 0, align 4
@ad1843_ADLF = common dso_local global i32 0, align 4
@ad1843_ADRF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ad1843_setup_adc(%struct.snd_ad1843* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_ad1843*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_ad1843* %0, %struct.snd_ad1843** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %16 [
    i32 129, label %11
    i32 128, label %12
    i32 130, label %13
    i32 131, label %14
    i32 132, label %15
  ]

11:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %17

12:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %17

13:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  br label %17

14:                                               ; preds = %4
  store i32 2, i32* %9, align 4
  br label %17

15:                                               ; preds = %4
  store i32 3, i32* %9, align 4
  br label %17

16:                                               ; preds = %4
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %12, %11
  %18 = load %struct.snd_ad1843*, %struct.snd_ad1843** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ad1843_write_bits(%struct.snd_ad1843* %18, i32* @ad1843_C3C, i32 %19)
  %21 = load %struct.snd_ad1843*, %struct.snd_ad1843** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @ad1843_write_multi(%struct.snd_ad1843* %21, i32 2, i32* @ad1843_ADLF, i32 %22, i32* @ad1843_ADRF, i32 %23)
  ret void
}

declare dso_local i32 @ad1843_write_bits(%struct.snd_ad1843*, i32*, i32) #1

declare dso_local i32 @ad1843_write_multi(%struct.snd_ad1843*, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
