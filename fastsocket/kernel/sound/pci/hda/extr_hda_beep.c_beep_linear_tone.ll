; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_beep.c_beep_linear_tone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_beep.c_beep_linear_tone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_beep = type { i32 }

@DIGBEEP_HZ_MIN = common dso_local global i32 0, align 4
@DIGBEEP_HZ_STEP = common dso_local global i32 0, align 4
@DIGBEEP_HZ_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_beep*, i32)* @beep_linear_tone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beep_linear_tone(%struct.hda_beep* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_beep*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_beep* %0, %struct.hda_beep** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = mul nsw i32 %10, 1000
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @DIGBEEP_HZ_MIN, align 4
  %14 = sub nsw i32 %12, %13
  %15 = load i32, i32* @DIGBEEP_HZ_STEP, align 4
  %16 = sdiv i32 %15, 2
  %17 = add nsw i32 %14, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %35

21:                                               ; preds = %9
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @DIGBEEP_HZ_MAX, align 4
  %24 = load i32, i32* @DIGBEEP_HZ_MIN, align 4
  %25 = sub nsw i32 %23, %24
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %34

28:                                               ; preds = %21
  %29 = load i32, i32* @DIGBEEP_HZ_STEP, align 4
  %30 = load i32, i32* %5, align 4
  %31 = sdiv i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 255, %32
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %28, %27
  br label %35

35:                                               ; preds = %34, %20
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %8
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
