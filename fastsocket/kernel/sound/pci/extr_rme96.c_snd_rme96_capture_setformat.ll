; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_capture_setformat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_capture_setformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme96 = type { i64, i32 }

@RME96_WCR_MODE24_2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RME96_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rme96*, i32)* @snd_rme96_capture_setformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_capture_setformat(%struct.rme96* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rme96*, align 8
  %5 = alloca i32, align 4
  store %struct.rme96* %0, %struct.rme96** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %20 [
    i32 129, label %7
    i32 128, label %14
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @RME96_WCR_MODE24_2, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.rme96*, %struct.rme96** %4, align 8
  %11 = getelementptr inbounds %struct.rme96, %struct.rme96* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 8
  br label %23

14:                                               ; preds = %2
  %15 = load i32, i32* @RME96_WCR_MODE24_2, align 4
  %16 = load %struct.rme96*, %struct.rme96** %4, align 8
  %17 = getelementptr inbounds %struct.rme96, %struct.rme96* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %33

23:                                               ; preds = %14, %7
  %24 = load %struct.rme96*, %struct.rme96** %4, align 8
  %25 = getelementptr inbounds %struct.rme96, %struct.rme96* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rme96*, %struct.rme96** %4, align 8
  %28 = getelementptr inbounds %struct.rme96, %struct.rme96* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RME96_IO_CONTROL_REGISTER, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %23, %20
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
