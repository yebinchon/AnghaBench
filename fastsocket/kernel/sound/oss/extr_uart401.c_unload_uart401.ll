; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_uart401.c_unload_uart401.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_uart401.c_unload_uart401.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_6__*, i32, i32, %struct.TYPE_6__* }
%struct.address_info = type { i32*, i32 }

@midi_devs = common dso_local global %struct.TYPE_6__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unload_uart401(%struct.address_info* %0) #0 {
  %2 = alloca %struct.address_info*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.address_info* %0, %struct.address_info** %2, align 8
  %5 = load %struct.address_info*, %struct.address_info** %2, align 8
  %6 = getelementptr inbounds %struct.address_info, %struct.address_info* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 4
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @midi_devs, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %13, i64 %15
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp eq %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %12, %1
  br label %82

20:                                               ; preds = %12
  %21 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @midi_devs, align 8
  %22 = load %struct.address_info*, %struct.address_info** %2, align 8
  %23 = getelementptr inbounds %struct.address_info, %struct.address_info* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %21, i64 %27
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %3, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = icmp eq %struct.TYPE_6__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %82

35:                                               ; preds = %20
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = call i32 @reset_uart401(%struct.TYPE_6__* %36)
  %38 = load %struct.address_info*, %struct.address_info** %2, align 8
  %39 = getelementptr inbounds %struct.address_info, %struct.address_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @release_region(i32 %40, i32 4)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %35
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = call i32 @free_irq(i32 %49, %struct.TYPE_6__* %50)
  br label %52

52:                                               ; preds = %46, %35
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = icmp ne %struct.TYPE_6__* %53, null
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  %56 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @midi_devs, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %56, i64 %59
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = call i32 @kfree(%struct.TYPE_6__* %63)
  %65 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @midi_devs, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %65, i64 %68
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = call i32 @kfree(%struct.TYPE_6__* %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = call i32 @kfree(%struct.TYPE_6__* %72)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %74

74:                                               ; preds = %55, %52
  %75 = load %struct.address_info*, %struct.address_info** %2, align 8
  %76 = getelementptr inbounds %struct.address_info, %struct.address_info* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = call i32 @sound_unload_mididev(i64 %80)
  br label %82

82:                                               ; preds = %74, %34, %19
  ret void
}

declare dso_local i32 @reset_uart401(%struct.TYPE_6__*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @sound_unload_mididev(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
