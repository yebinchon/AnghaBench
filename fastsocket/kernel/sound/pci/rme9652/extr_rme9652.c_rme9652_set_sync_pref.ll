; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_rme9652.c_rme9652_set_sync_pref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_rme9652.c_rme9652_set_sync_pref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rme9652 = type { i32, i32 }

@RME9652_SyncPref_Mask = common dso_local global i32 0, align 4
@RME9652_SyncPref_ADAT1 = common dso_local global i32 0, align 4
@RME9652_SyncPref_ADAT2 = common dso_local global i32 0, align 4
@RME9652_SyncPref_ADAT3 = common dso_local global i32 0, align 4
@RME9652_SyncPref_SPDIF = common dso_local global i32 0, align 4
@RME9652_control_register = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rme9652*, i32)* @rme9652_set_sync_pref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rme9652_set_sync_pref(%struct.snd_rme9652* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rme9652*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_rme9652* %0, %struct.snd_rme9652** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @RME9652_SyncPref_Mask, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %9 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %37 [
    i32 131, label %13
    i32 130, label %19
    i32 129, label %25
    i32 128, label %31
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @RME9652_SyncPref_ADAT1, align 4
  %15 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %16 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %37

19:                                               ; preds = %2
  %20 = load i32, i32* @RME9652_SyncPref_ADAT2, align 4
  %21 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %22 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %37

25:                                               ; preds = %2
  %26 = load i32, i32* @RME9652_SyncPref_ADAT3, align 4
  %27 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %28 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %37

31:                                               ; preds = %2
  %32 = load i32, i32* @RME9652_SyncPref_SPDIF, align 4
  %33 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %34 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %2, %31, %25, %19, %13
  %38 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %39 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %44 = call i32 @rme9652_stop(%struct.snd_rme9652* %43)
  br label %45

45:                                               ; preds = %42, %37
  %46 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %47 = load i32, i32* @RME9652_control_register, align 4
  %48 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %49 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @rme9652_write(%struct.snd_rme9652* %46, i32 %47, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %56 = call i32 @rme9652_start(%struct.snd_rme9652* %55)
  br label %57

57:                                               ; preds = %54, %45
  ret i32 0
}

declare dso_local i32 @rme9652_stop(%struct.snd_rme9652*) #1

declare dso_local i32 @rme9652_write(%struct.snd_rme9652*, i32, i32) #1

declare dso_local i32 @rme9652_start(%struct.snd_rme9652*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
