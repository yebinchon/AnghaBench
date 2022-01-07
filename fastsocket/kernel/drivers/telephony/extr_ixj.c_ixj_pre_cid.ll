; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_pre_cid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_pre_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, %struct.TYPE_13__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@LINEAR16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @ixj_pre_cid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixj_pre_cid(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %3 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 13
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 14
  store i32 %5, i32* %7, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 11
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 12
  store i32 %10, i32* %12, align 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %14 = call i32 @get_play_volume(%struct.TYPE_15__* %13)
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 10
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 9
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %29 = call i32 @get_rec_volume(%struct.TYPE_15__* %28)
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %56 [
    i32 160, label %47
    i32 80, label %50
    i32 240, label %53
  ]

47:                                               ; preds = %1
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  store i32 20, i32* %49, align 4
  br label %56

50:                                               ; preds = %1
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  store i32 10, i32* %52, align 4
  br label %56

53:                                               ; preds = %1
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  store i32 30, i32* %55, align 4
  br label %56

56:                                               ; preds = %1, %53, %50, %47
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %58 = call i32 @ixj_play_stop(%struct.TYPE_15__* %57)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %60 = call i32 @ixj_cpt_stop(%struct.TYPE_15__* %59)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %65 = call i32 @set_base_frame(%struct.TYPE_15__* %64, i32 30)
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %67 = load i32, i32* @LINEAR16, align 4
  %68 = call i32 @set_play_codec(%struct.TYPE_15__* %66, i32 %67)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %70 = call i32 @set_play_volume(%struct.TYPE_15__* %69, i32 27)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %72 = call i32 @ixj_play_start(%struct.TYPE_15__* %71)
  ret void
}

declare dso_local i32 @get_play_volume(%struct.TYPE_15__*) #1

declare dso_local i32 @get_rec_volume(%struct.TYPE_15__*) #1

declare dso_local i32 @ixj_play_stop(%struct.TYPE_15__*) #1

declare dso_local i32 @ixj_cpt_stop(%struct.TYPE_15__*) #1

declare dso_local i32 @set_base_frame(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @set_play_codec(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @set_play_volume(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ixj_play_start(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
