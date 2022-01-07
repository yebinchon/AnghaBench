; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_rme9652.c_rme9652_sync_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_rme9652.c_rme9652_sync_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rme9652 = type { i32 }

@RME9652_wsel = common dso_local global i32 0, align 4
@RME9652_Master = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rme9652*)* @rme9652_sync_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rme9652_sync_mode(%struct.snd_rme9652* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_rme9652*, align 8
  store %struct.snd_rme9652* %0, %struct.snd_rme9652** %3, align 8
  %4 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %5 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @RME9652_wsel, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 2, i32* %2, align 4
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %13 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RME9652_Master, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %20

19:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %18, %10
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
