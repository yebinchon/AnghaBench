; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_hdsp_external_sample_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_hdsp_external_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i64 }

@HDSP_status2Register = common dso_local global i32 0, align 4
@HDSP_systemFrequencyMask = common dso_local global i32 0, align 4
@H9632 = common dso_local global i64 0, align 8
@HDSP_AUTOSYNC_FROM_SPDIF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*)* @hdsp_external_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdsp_external_sample_rate(%struct.hdsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hdsp* %0, %struct.hdsp** %3, align 8
  %6 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %7 = load i32, i32* @HDSP_status2Register, align 4
  %8 = call i32 @hdsp_read(%struct.hdsp* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @HDSP_systemFrequencyMask, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %13 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @H9632, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %19 = call i64 @hdsp_autosync_ref(%struct.hdsp* %18)
  %20 = load i64, i64* @HDSP_AUTOSYNC_FROM_SPDIF, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %24 = call i32 @hdsp_spdif_sample_rate(%struct.hdsp* %23)
  store i32 %24, i32* %2, align 4
  br label %34

25:                                               ; preds = %17, %1
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %33 [
    i32 133, label %27
    i32 132, label %28
    i32 131, label %29
    i32 130, label %30
    i32 129, label %31
    i32 128, label %32
  ]

27:                                               ; preds = %25
  store i32 32000, i32* %2, align 4
  br label %34

28:                                               ; preds = %25
  store i32 44100, i32* %2, align 4
  br label %34

29:                                               ; preds = %25
  store i32 48000, i32* %2, align 4
  br label %34

30:                                               ; preds = %25
  store i32 64000, i32* %2, align 4
  br label %34

31:                                               ; preds = %25
  store i32 88200, i32* %2, align 4
  br label %34

32:                                               ; preds = %25
  store i32 96000, i32* %2, align 4
  br label %34

33:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %32, %31, %30, %29, %28, %27, %22
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @hdsp_read(%struct.hdsp*, i32) #1

declare dso_local i64 @hdsp_autosync_ref(%struct.hdsp*) #1

declare dso_local i32 @hdsp_spdif_sample_rate(%struct.hdsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
