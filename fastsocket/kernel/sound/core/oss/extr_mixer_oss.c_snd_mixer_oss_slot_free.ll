; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_slot_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_slot_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss_slot = type { i64 }
%struct.slot = type { %struct.slot*, %struct.slot*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_mixer_oss_slot*)* @snd_mixer_oss_slot_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mixer_oss_slot_free(%struct.snd_mixer_oss_slot* %0) #0 {
  %2 = alloca %struct.snd_mixer_oss_slot*, align 8
  %3 = alloca %struct.slot*, align 8
  store %struct.snd_mixer_oss_slot* %0, %struct.snd_mixer_oss_slot** %2, align 8
  %4 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %2, align 8
  %5 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.slot*
  store %struct.slot* %7, %struct.slot** %3, align 8
  %8 = load %struct.slot*, %struct.slot** %3, align 8
  %9 = icmp ne %struct.slot* %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %1
  %11 = load %struct.slot*, %struct.slot** %3, align 8
  %12 = getelementptr inbounds %struct.slot, %struct.slot* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = load %struct.slot*, %struct.slot** %3, align 8
  %17 = getelementptr inbounds %struct.slot, %struct.slot* %16, i32 0, i32 0
  %18 = load %struct.slot*, %struct.slot** %17, align 8
  %19 = icmp ne %struct.slot* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load %struct.slot*, %struct.slot** %3, align 8
  %22 = getelementptr inbounds %struct.slot, %struct.slot* %21, i32 0, i32 0
  %23 = load %struct.slot*, %struct.slot** %22, align 8
  %24 = getelementptr inbounds %struct.slot, %struct.slot* %23, i32 0, i32 1
  %25 = load %struct.slot*, %struct.slot** %24, align 8
  %26 = call i32 @kfree(%struct.slot* %25)
  %27 = load %struct.slot*, %struct.slot** %3, align 8
  %28 = getelementptr inbounds %struct.slot, %struct.slot* %27, i32 0, i32 0
  %29 = load %struct.slot*, %struct.slot** %28, align 8
  %30 = call i32 @kfree(%struct.slot* %29)
  br label %31

31:                                               ; preds = %20, %15, %10
  %32 = load %struct.slot*, %struct.slot** %3, align 8
  %33 = call i32 @kfree(%struct.slot* %32)
  br label %34

34:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @kfree(%struct.slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
