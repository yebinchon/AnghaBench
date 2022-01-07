; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_hdsp_pref_sync_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_hdsp_pref_sync_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i32 }

@HDSP_SyncRefMask = common dso_local global i32 0, align 4
@HDSP_SYNC_FROM_ADAT1 = common dso_local global i32 0, align 4
@HDSP_SYNC_FROM_ADAT2 = common dso_local global i32 0, align 4
@HDSP_SYNC_FROM_ADAT3 = common dso_local global i32 0, align 4
@HDSP_SYNC_FROM_SPDIF = common dso_local global i32 0, align 4
@HDSP_SYNC_FROM_WORD = common dso_local global i32 0, align 4
@HDSP_SYNC_FROM_ADAT_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*)* @hdsp_pref_sync_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdsp_pref_sync_ref(%struct.hdsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdsp*, align 8
  store %struct.hdsp* %0, %struct.hdsp** %3, align 8
  %4 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %5 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @HDSP_SyncRefMask, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %21 [
    i32 133, label %9
    i32 132, label %11
    i32 131, label %13
    i32 129, label %15
    i32 128, label %17
    i32 130, label %19
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @HDSP_SYNC_FROM_ADAT1, align 4
  store i32 %10, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load i32, i32* @HDSP_SYNC_FROM_ADAT2, align 4
  store i32 %12, i32* %2, align 4
  br label %23

13:                                               ; preds = %1
  %14 = load i32, i32* @HDSP_SYNC_FROM_ADAT3, align 4
  store i32 %14, i32* %2, align 4
  br label %23

15:                                               ; preds = %1
  %16 = load i32, i32* @HDSP_SYNC_FROM_SPDIF, align 4
  store i32 %16, i32* %2, align 4
  br label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @HDSP_SYNC_FROM_WORD, align 4
  store i32 %18, i32* %2, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @HDSP_SYNC_FROM_ADAT_SYNC, align 4
  store i32 %20, i32* %2, align 4
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @HDSP_SYNC_FROM_WORD, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %19, %17, %15, %13, %11, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
