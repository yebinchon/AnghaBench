; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_pss.c_pss_mixer_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_pss.c_pss_mixer_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@pss_mixer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @pss_mixer_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pss_mixer_reset(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %4 = call i32 @set_master_volume(%struct.TYPE_10__* %3, i32 33, i32 33)
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = call i32 @set_bass(%struct.TYPE_10__* %5, i32 50)
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = call i32 @set_treble(%struct.TYPE_10__* %7, i32 50)
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = call i32 @set_synth_volume(%struct.TYPE_10__* %9, i32 30)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = call i32 @pss_write(%struct.TYPE_10__* %11, i32 16)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = call i32 @pss_write(%struct.TYPE_10__* %13, i32 2254)
  %15 = load i64, i64* @pss_mixer, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  store i32 33, i32* %20, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32 33, i32* %23, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  store i32 50, i32* %26, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 3
  store i32 50, i32* %29, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 4
  store i32 30, i32* %32, align 4
  br label %33

33:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @set_master_volume(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @set_bass(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @set_treble(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @set_synth_volume(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @pss_write(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
