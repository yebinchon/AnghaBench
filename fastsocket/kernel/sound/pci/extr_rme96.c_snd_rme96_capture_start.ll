; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_capture_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_capture_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme96 = type { i64, i32 }

@RME96_IO_RESET_REC_POS = common dso_local global i64 0, align 8
@RME96_WCR_START_2 = common dso_local global i32 0, align 4
@RME96_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rme96*, i32)* @snd_rme96_capture_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_rme96_capture_start(%struct.rme96* %0, i32 %1) #0 {
  %3 = alloca %struct.rme96*, align 8
  %4 = alloca i32, align 4
  store %struct.rme96* %0, %struct.rme96** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = load %struct.rme96*, %struct.rme96** %3, align 8
  %9 = getelementptr inbounds %struct.rme96, %struct.rme96* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RME96_IO_RESET_REC_POS, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 0, i64 %12)
  br label %14

14:                                               ; preds = %7, %2
  %15 = load i32, i32* @RME96_WCR_START_2, align 4
  %16 = load %struct.rme96*, %struct.rme96** %3, align 8
  %17 = getelementptr inbounds %struct.rme96, %struct.rme96* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.rme96*, %struct.rme96** %3, align 8
  %21 = getelementptr inbounds %struct.rme96, %struct.rme96* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.rme96*, %struct.rme96** %3, align 8
  %24 = getelementptr inbounds %struct.rme96, %struct.rme96* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RME96_IO_CONTROL_REGISTER, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
