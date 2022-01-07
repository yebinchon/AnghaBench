; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_ad1843.c_ad1843_setup_dac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_ad1843.c_ad1843_setup_dac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ad1843 = type { i32 }

@ad1843_C2C = common dso_local global i32 0, align 4
@ad1843_DA2SM = common dso_local global i32 0, align 4
@ad1843_DA2F = common dso_local global i32 0, align 4
@ad1843_C1C = common dso_local global i32 0, align 4
@ad1843_DA1SM = common dso_local global i32 0, align 4
@ad1843_DA1F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ad1843_setup_dac(%struct.snd_ad1843* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_ad1843*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_ad1843* %0, %struct.snd_ad1843** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %9, align 4
  switch i32 %13, label %19 [
    i32 129, label %14
    i32 128, label %15
    i32 130, label %16
    i32 131, label %17
    i32 132, label %18
  ]

14:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %20

15:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %20

16:                                               ; preds = %5
  store i32 1, i32* %11, align 4
  br label %20

17:                                               ; preds = %5
  store i32 2, i32* %11, align 4
  br label %20

18:                                               ; preds = %5
  store i32 3, i32* %11, align 4
  br label %20

19:                                               ; preds = %5
  br label %20

20:                                               ; preds = %19, %18, %17, %16, %15, %14
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %24 [
    i32 2, label %22
    i32 1, label %23
  ]

22:                                               ; preds = %20
  store i32 0, i32* %12, align 4
  br label %25

23:                                               ; preds = %20
  store i32 1, i32* %12, align 4
  br label %25

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %24, %23, %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.snd_ad1843*, %struct.snd_ad1843** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @ad1843_write_bits(%struct.snd_ad1843* %29, i32* @ad1843_C2C, i32 %30)
  %32 = load %struct.snd_ad1843*, %struct.snd_ad1843** %6, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @ad1843_write_multi(%struct.snd_ad1843* %32, i32 2, i32* @ad1843_DA2SM, i32 %33, i32* @ad1843_DA2F, i32 %34)
  br label %44

36:                                               ; preds = %25
  %37 = load %struct.snd_ad1843*, %struct.snd_ad1843** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @ad1843_write_bits(%struct.snd_ad1843* %37, i32* @ad1843_C1C, i32 %38)
  %40 = load %struct.snd_ad1843*, %struct.snd_ad1843** %6, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @ad1843_write_multi(%struct.snd_ad1843* %40, i32 2, i32* @ad1843_DA1SM, i32 %41, i32* @ad1843_DA1F, i32 %42)
  br label %44

44:                                               ; preds = %36, %28
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
