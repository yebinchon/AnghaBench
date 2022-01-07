; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1_synth.c_snd_emu10k1_synth_new_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1_synth.c_snd_emu10k1_synth_new_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_device = type { %struct.snd_emux*, i32 }
%struct.snd_emux = type { i32, i32, i32, i32, i32, i32, i64, i32, %struct.snd_emu10k1* }
%struct.snd_emu10k1 = type { i32, i32, %struct.snd_emux*, i64, i32 }
%struct.snd_emu10k1_synth_arg = type { i32, i32, i32, %struct.snd_emu10k1* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Emu10k1\00", align 1
@snd_emu10k1_synth_get_voice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_device*)* @snd_emu10k1_synth_new_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_synth_new_device(%struct.snd_seq_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_seq_device*, align 8
  %4 = alloca %struct.snd_emux*, align 8
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca %struct.snd_emu10k1_synth_arg*, align 8
  %7 = alloca i64, align 8
  store %struct.snd_seq_device* %0, %struct.snd_seq_device** %3, align 8
  %8 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %9 = call %struct.snd_emu10k1_synth_arg* @SNDRV_SEQ_DEVICE_ARGPTR(%struct.snd_seq_device* %8)
  store %struct.snd_emu10k1_synth_arg* %9, %struct.snd_emu10k1_synth_arg** %6, align 8
  %10 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %6, align 8
  %11 = icmp eq %struct.snd_emu10k1_synth_arg* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %127

15:                                               ; preds = %1
  %16 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %6, align 8
  %17 = getelementptr inbounds %struct.snd_emu10k1_synth_arg, %struct.snd_emu10k1_synth_arg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %127

21:                                               ; preds = %15
  %22 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %6, align 8
  %23 = getelementptr inbounds %struct.snd_emu10k1_synth_arg, %struct.snd_emu10k1_synth_arg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %6, align 8
  %28 = getelementptr inbounds %struct.snd_emu10k1_synth_arg, %struct.snd_emu10k1_synth_arg* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  br label %38

29:                                               ; preds = %21
  %30 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %6, align 8
  %31 = getelementptr inbounds %struct.snd_emu10k1_synth_arg, %struct.snd_emu10k1_synth_arg* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 64
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %6, align 8
  %36 = getelementptr inbounds %struct.snd_emu10k1_synth_arg, %struct.snd_emu10k1_synth_arg* %35, i32 0, i32 1
  store i32 64, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %29
  br label %38

38:                                               ; preds = %37, %26
  %39 = call i64 @snd_emux_new(%struct.snd_emux** %4)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %127

44:                                               ; preds = %38
  %45 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %46 = call i32 @snd_emu10k1_ops_setup(%struct.snd_emux* %45)
  %47 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %6, align 8
  %48 = getelementptr inbounds %struct.snd_emu10k1_synth_arg, %struct.snd_emu10k1_synth_arg* %47, i32 0, i32 3
  %49 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %48, align 8
  store %struct.snd_emu10k1* %49, %struct.snd_emu10k1** %5, align 8
  %50 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %51 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %52 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %51, i32 0, i32 8
  store %struct.snd_emu10k1* %50, %struct.snd_emu10k1** %52, align 8
  %53 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %6, align 8
  %54 = getelementptr inbounds %struct.snd_emu10k1_synth_arg, %struct.snd_emu10k1_synth_arg* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %57 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %6, align 8
  %59 = getelementptr inbounds %struct.snd_emu10k1_synth_arg, %struct.snd_emu10k1_synth_arg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %62 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %64 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %63, i32 0, i32 2
  store i32 -501, i32* %64, align 8
  %65 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %66 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %69 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %68, i32 0, i32 7
  store i32 %67, i32* %69, align 8
  %70 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %6, align 8
  %71 = getelementptr inbounds %struct.snd_emu10k1_synth_arg, %struct.snd_emu10k1_synth_arg* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %74, label %78

74:                                               ; preds = %44
  %75 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %6, align 8
  %76 = getelementptr inbounds %struct.snd_emu10k1_synth_arg, %struct.snd_emu10k1_synth_arg* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  br label %79

78:                                               ; preds = %44
  br label %79

79:                                               ; preds = %78, %74
  %80 = phi i32 [ %77, %74 ], [ 2, %78 ]
  %81 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %82 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %84 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 2, i32 1
  %89 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %90 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %92 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %91, i32 0, i32 6
  store i64 0, i64* %92, align 8
  %93 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %94 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %93, i32 0, i32 5
  store i32 2, i32* %94, align 4
  %95 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %96 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %97 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %6, align 8
  %100 = getelementptr inbounds %struct.snd_emu10k1_synth_arg, %struct.snd_emu10k1_synth_arg* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @snd_emux_register(%struct.snd_emux* %95, i32 %98, i32 %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %79
  %105 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %106 = call i32 @snd_emux_free(%struct.snd_emux* %105)
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %127

109:                                              ; preds = %79
  %110 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %111 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %110, i32 0, i32 0
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @spin_lock_irqsave(i32* %111, i64 %112)
  %114 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %115 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %116 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %115, i32 0, i32 2
  store %struct.snd_emux* %114, %struct.snd_emux** %116, align 8
  %117 = load i32, i32* @snd_emu10k1_synth_get_voice, align 4
  %118 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %119 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %121 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %120, i32 0, i32 0
  %122 = load i64, i64* %7, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* %121, i64 %122)
  %124 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %125 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %126 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %125, i32 0, i32 0
  store %struct.snd_emux* %124, %struct.snd_emux** %126, align 8
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %109, %104, %41, %20, %12
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.snd_emu10k1_synth_arg* @SNDRV_SEQ_DEVICE_ARGPTR(%struct.snd_seq_device*) #1

declare dso_local i64 @snd_emux_new(%struct.snd_emux**) #1

declare dso_local i32 @snd_emu10k1_ops_setup(%struct.snd_emux*) #1

declare dso_local i64 @snd_emux_register(%struct.snd_emux*, i32, i32, i8*) #1

declare dso_local i32 @snd_emux_free(%struct.snd_emux*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
