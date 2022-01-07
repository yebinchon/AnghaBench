; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_hdsp_autosync_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_hdsp_autosync_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i32 }

@HDSP_status2Register = common dso_local global i32 0, align 4
@HDSP_AUTOSYNC_FROM_WORD = common dso_local global i32 0, align 4
@HDSP_AUTOSYNC_FROM_ADAT_SYNC = common dso_local global i32 0, align 4
@HDSP_AUTOSYNC_FROM_SPDIF = common dso_local global i32 0, align 4
@HDSP_AUTOSYNC_FROM_NONE = common dso_local global i32 0, align 4
@HDSP_AUTOSYNC_FROM_ADAT1 = common dso_local global i32 0, align 4
@HDSP_AUTOSYNC_FROM_ADAT2 = common dso_local global i32 0, align 4
@HDSP_AUTOSYNC_FROM_ADAT3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*)* @hdsp_autosync_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdsp_autosync_ref(%struct.hdsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdsp*, align 8
  %4 = alloca i32, align 4
  store %struct.hdsp* %0, %struct.hdsp** %3, align 8
  %5 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %6 = load i32, i32* @HDSP_status2Register, align 4
  %7 = call i32 @hdsp_read(%struct.hdsp* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 134
  switch i32 %9, label %24 [
    i32 128, label %10
    i32 130, label %12
    i32 129, label %14
    i32 134, label %16
    i32 133, label %18
    i32 132, label %20
    i32 131, label %22
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @HDSP_AUTOSYNC_FROM_WORD, align 4
  store i32 %11, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load i32, i32* @HDSP_AUTOSYNC_FROM_ADAT_SYNC, align 4
  store i32 %13, i32* %2, align 4
  br label %26

14:                                               ; preds = %1
  %15 = load i32, i32* @HDSP_AUTOSYNC_FROM_SPDIF, align 4
  store i32 %15, i32* %2, align 4
  br label %26

16:                                               ; preds = %1
  %17 = load i32, i32* @HDSP_AUTOSYNC_FROM_NONE, align 4
  store i32 %17, i32* %2, align 4
  br label %26

18:                                               ; preds = %1
  %19 = load i32, i32* @HDSP_AUTOSYNC_FROM_ADAT1, align 4
  store i32 %19, i32* %2, align 4
  br label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @HDSP_AUTOSYNC_FROM_ADAT2, align 4
  store i32 %21, i32* %2, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @HDSP_AUTOSYNC_FROM_ADAT3, align 4
  store i32 %23, i32* %2, align 4
  br label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @HDSP_AUTOSYNC_FROM_WORD, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %22, %20, %18, %16, %14, %12, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @hdsp_read(%struct.hdsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
