; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi.c_snd_seq_midisynth_unregister_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi.c_snd_seq_midisynth_unregister_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_midisynth_client = type { i32*, i64, i32, %struct.seq_midisynth_client** }
%struct.snd_seq_device = type { i32, %struct.snd_card* }
%struct.snd_card = type { i64 }
%struct.seq_midisynth = type { i32*, i64, i32, %struct.seq_midisynth** }

@register_mutex = common dso_local global i32 0, align 4
@synths = common dso_local global %struct.seq_midisynth_client** null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_device*)* @snd_seq_midisynth_unregister_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_seq_midisynth_unregister_port(%struct.snd_seq_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_seq_device*, align 8
  %4 = alloca %struct.seq_midisynth_client*, align 8
  %5 = alloca %struct.seq_midisynth*, align 8
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_seq_device* %0, %struct.snd_seq_device** %3, align 8
  %10 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %11 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %10, i32 0, i32 1
  %12 = load %struct.snd_card*, %struct.snd_card** %11, align 8
  store %struct.snd_card* %12, %struct.snd_card** %6, align 8
  %13 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %14 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = call i32 @mutex_lock(i32* @register_mutex)
  %17 = load %struct.seq_midisynth_client**, %struct.seq_midisynth_client*** @synths, align 8
  %18 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %19 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %17, i64 %20
  %22 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %21, align 8
  store %struct.seq_midisynth_client* %22, %struct.seq_midisynth_client** %4, align 8
  %23 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %24 = icmp eq %struct.seq_midisynth_client* %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %1
  %26 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %27 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %26, i32 0, i32 3
  %28 = load %struct.seq_midisynth_client**, %struct.seq_midisynth_client*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %28, i64 %30
  %32 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %31, align 8
  %33 = icmp eq %struct.seq_midisynth_client* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %25, %1
  %35 = call i32 @mutex_unlock(i32* @register_mutex)
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %106

38:                                               ; preds = %25
  %39 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %40 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  %46 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %47 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 0, i32* %51, align 4
  %52 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %53 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %52, i32 0, i32 3
  %54 = load %struct.seq_midisynth_client**, %struct.seq_midisynth_client*** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %54, i64 %56
  %58 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %57, align 8
  %59 = bitcast %struct.seq_midisynth_client* %58 to %struct.seq_midisynth*
  store %struct.seq_midisynth* %59, %struct.seq_midisynth** %5, align 8
  %60 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %61 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %60, i32 0, i32 3
  %62 = load %struct.seq_midisynth_client**, %struct.seq_midisynth_client*** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %62, i64 %64
  store %struct.seq_midisynth_client* null, %struct.seq_midisynth_client** %65, align 8
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %77, %38
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %66
  %71 = load %struct.seq_midisynth*, %struct.seq_midisynth** %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %71, i64 %73
  %75 = bitcast %struct.seq_midisynth* %74 to %struct.seq_midisynth_client*
  %76 = call i32 @snd_seq_midisynth_delete(%struct.seq_midisynth_client* %75)
  br label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %66

80:                                               ; preds = %66
  %81 = load %struct.seq_midisynth*, %struct.seq_midisynth** %5, align 8
  %82 = bitcast %struct.seq_midisynth* %81 to %struct.seq_midisynth_client*
  %83 = call i32 @kfree(%struct.seq_midisynth_client* %82)
  %84 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %85 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, -1
  store i64 %87, i64* %85, align 8
  %88 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %89 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp sle i64 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %80
  %93 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %94 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @snd_seq_delete_kernel_client(i32 %95)
  %97 = load %struct.seq_midisynth_client**, %struct.seq_midisynth_client*** @synths, align 8
  %98 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %99 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %97, i64 %100
  store %struct.seq_midisynth_client* null, %struct.seq_midisynth_client** %101, align 8
  %102 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %103 = call i32 @kfree(%struct.seq_midisynth_client* %102)
  br label %104

104:                                              ; preds = %92, %80
  %105 = call i32 @mutex_unlock(i32* @register_mutex)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %34
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_seq_midisynth_delete(%struct.seq_midisynth_client*) #1

declare dso_local i32 @kfree(%struct.seq_midisynth_client*) #1

declare dso_local i32 @snd_seq_delete_kernel_client(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
